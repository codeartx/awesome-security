<?php

/**
 * PHPIDS
 * 
 * Requirements: PHP5, SimpleXML
 *
 * Copyright (c) 2008 PHPIDS group (http://php-ids.org)
 *
 * PHPIDS is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, version 3 of the License, or 
 * (at your option) any later version.
 *
 * PHPIDS is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with PHPIDS. If not, see <http://www.gnu.org/licenses/>. 
 *
 * PHP version 5.1.6+
 * 
 * @category Security
 * @package  PHPIDS
 * @author   Mario Heiderich <mario.heiderich@gmail.com>
 * @author   Christian Matthies <ch0012@gmail.com>
 * @author   Lars Strojny <lars@strojny.net>
 * @license  http://www.gnu.org/licenses/lgpl.html LGPL
 * @link     http://php-ids.org/
 */

require_once 'IDS/Caching/Interface.php';

/**
 * File caching wrapper
 *
 * This class inhabits functionality to get and set cache via memcached.
 *
 * @category  Security
 * @package   PHPIDS
 * @author    Christian Matthies <ch0012@gmail.com>
 * @author    Mario Heiderich <mario.heiderich@gmail.com>
 * @author    Lars Strojny <lars@strojny.net>
 * @copyright 2007 The PHPIDS Groupoup
 * @license   http://www.gnu.org/licenses/lgpl.html LGPL
 * @version   Release: $Id:Memcached.php 517 2007-09-15 15:04:13Z mario $
 * @link      http://php-ids.org/
 * @since     Version 0.4
 */
class IDS_Caching_Memcached implements IDS_Caching_Interface
{

    /**
     * Caching type
     *
     * @var string
     */
    private $type = null;

    /**
     * Cache configuration
     *
     * @var array
     */
    private $config = null;

    /**
     * Path to memcache timestamp file
     *
     * @var string
     */
    private $path = null;

    /**
     * Flag if the filter storage has been found in memcached 
     * 
     * @var boolean 
     */ 
    private $isCached = false; 
    
    /**
     * Memcache object
     *
     * @var object
     */
    private $memcache = null;

    /**
     * Holds an instance of this class
     *
     * @var object
     */
    private static $cachingInstance = null;


    /**
     * Constructor
     *
     * @param string $type caching type
     * @param array  $init the IDS_Init object
     * 
     * @throws Exception if necessary files aren't writeable
     * @return void
     */
    public function __construct($type, $init) 
    {

        $this->type   = $type;
        $this->config = $init->config['Caching'];
        $this->path   = $init->getBasePath() . $this->config['path'];        
        
        $this->_connect();

        if (file_exists($this->path) && !is_writable($this->path)) {
            throw new Exception('Make sure all files in ' . 
            htmlspecialchars($this->path, ENT_QUOTES, 'UTF-8') .
                ' are writeable!');
        }
    }

    /**
     * Returns an instance of this class
     *
     * @param string $type caching type
     * @param array  $init the IDS_Init object
     * 
     * @return object $this
     */
    public static function getInstance($type, $init) 
    {

        if (!self::$cachingInstance) {
            self::$cachingInstance = new IDS_Caching_Memcached($type, $init);
        }

        return self::$cachingInstance;
    }

    /**
     * Writes cache data
     *
     * @param array $data the caching data
     * 
     * @throws Exception if necessary files aren't writeable
     * @return object $this
     */
    public function setCache(array $data) 
    {

        if (!file_exists($this->path)) {
            $handle = fopen($this->path, 'w');
            fclose($handle);
        }

        if (!is_writable($this->path)) {
            throw new Exception('Make sure all files in ' . 
            htmlspecialchars($this->path, ENT_QUOTES, 'UTF-8') . 
                ' are writeable!');
        }

        if(!$this->isCached) { 
            $this->memcache->set(
                $this->config['key_prefix'] . '.storage',
                $data, false, $this->config['expiration_time']
            ); 
        }

        return $this;
    }

    /**
     * Returns the cached data
     *
     * Note that this method returns false if either type or file cache is 
     * not set
     *
     * @return mixed cache data or false
     */
    public function getCache() 
    {
        
        $data = $this->memcache->get(
            $this->config['key_prefix'] .  
            '.storage'
        ); 
        $this->isCached = !empty($data); 
        
        return $data;
    }

    /**
     * Connect to the memcached server
     *
     * @throws Exception if connection parameters are insufficient
     * @return void
     */
    private function _connect() 
    {

        if ($this->config['host'] && $this->config['port']) {
            // establish the memcache connection
            $this->memcache = new Memcache;
            $this->memcache->pconnect($this->config['host'], 
                $this->config['port']);
            $this->path = $this->config['tmp_path'];
            
            if(isset($init->config['General']['base_path']) 
                && $init->config['General']['base_path'] 
                && isset($init->config['General']['use_base_path']) 
                && $init->config['General']['use_base_path']) {
                $this->source = $init->config['General']['base_path'] . $this->path;
            }            
            
        } else {
            throw new Exception('Insufficient connection parameters');
        }
    }
}

/**
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: sw=4 ts=4 expandtab
 */
