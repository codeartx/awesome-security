<?php

if( !defined( 'DVWA_WEB_PAGE_TO_ROOT' ) ) {
	define( 'DVWA System error- WEB_PAGE_TO_ROOT undefined' );
	exit;
}

session_start(); // Creates a 'Full Path Disclosure' vuln.

// Include configs
require_once DVWA_WEB_PAGE_TO_ROOT . 'config/config.inc.php';
require_once( 'dvwaPhpIds.inc.php' );

// Declare the $html variable
if( !isset( $html ) ) {
	$html = "";
}

// Valid security levels
$security_levels = array('low', 'medium', 'high', 'impossible');
if( !isset( $_COOKIE[ 'security' ] ) || !in_array( $_COOKIE[ 'security' ], $security_levels ) ) {
	// Set security cookie to impossible if no cookie exists
	if( in_array( $_DVWA[ 'default_security_level' ], $security_levels) ) {
		dvwaSecurityLevelSet( $_DVWA[ 'default_security_level' ] );
	}
	else {
		dvwaSecurityLevelSet( 'impossible' );
	}

	if( $_DVWA[ 'default_phpids_level' ] == 'enabled' )
		dvwaPhpIdsEnabledSet( true );
	else
		dvwaPhpIdsEnabledSet( false );
}

// DVWA version
function dvwaVersionGet() {
	return '1.9';
}

// DVWA release date
function dvwaReleaseDateGet() {
	return '2015-09-19';
}


// Start session functions --

function &dvwaSessionGrab() {
	if( !isset( $_SESSION[ 'dvwa' ] ) ) {
		$_SESSION[ 'dvwa' ] = array();
	}
	return $_SESSION[ 'dvwa' ];
}


function dvwaPageStartup( $pActions ) {
	if( in_array( 'authenticated', $pActions ) ) {
		if( !dvwaIsLoggedIn()) {
			dvwaRedirect( DVWA_WEB_PAGE_TO_ROOT . 'login.php' );
		}
	}

	if( in_array( 'phpids', $pActions ) ) {
		if( dvwaPhpIdsIsEnabled() ) {
			dvwaPhpIdsTrap();
		}
	}
}


function dvwaPhpIdsEnabledSet( $pEnabled ) {
	$dvwaSession =& dvwaSessionGrab();
	if( $pEnabled ) {
		$dvwaSession[ 'php_ids' ] = 'enabled';
	}
	else {
		unset( $dvwaSession[ 'php_ids' ] );
	}
}


function dvwaPhpIdsIsEnabled() {
	$dvwaSession =& dvwaSessionGrab();
	return isset( $dvwaSession[ 'php_ids' ] );
}


function dvwaLogin( $pUsername ) {
	$dvwaSession =& dvwaSessionGrab();
	$dvwaSession[ 'username' ] = $pUsername;
}


function dvwaIsLoggedIn() {
	$dvwaSession =& dvwaSessionGrab();
	return isset( $dvwaSession[ 'username' ] );
}


function dvwaLogout() {
	$dvwaSession =& dvwaSessionGrab();
	unset( $dvwaSession[ 'username' ] );
}


function dvwaPageReload() {
	dvwaRedirect( $_SERVER[ 'PHP_SELF' ] );
}

function dvwaCurrentUser() {
	$dvwaSession =& dvwaSessionGrab();
	return ( isset( $dvwaSession[ 'username' ]) ? $dvwaSession[ 'username' ] : '') ;
}

// -- END (Session functions)

function &dvwaPageNewGrab() {
	$returnArray = array(
		'title'           => 'Damn Vulnerable Web Application (DVWA) v' . dvwaVersionGet() . '',
		'title_separator' => ' :: ',
		'body'            => '',
		'page_id'         => '',
		'help_button'     => '',
		'source_button'   => '',
	);
	return $returnArray;
}


function dvwaSecurityLevelGet() {
	return isset( $_COOKIE[ 'security' ] ) ? $_COOKIE[ 'security' ] : 'impossible';
}


function dvwaSecurityLevelSet( $pSecurityLevel ) {
	if( $pSecurityLevel == 'impossible' ) {
		$httponly = true;
	}
	else {
		$httponly = false;
	}
	setcookie( session_name(), session_id(), null, '/', null, null, $httponly );
	setcookie( 'security', $pSecurityLevel, NULL, NULL, NULL, NULL, $httponly );
}


// Start message functions --

function dvwaMessagePush( $pMessage ) {
	$dvwaSession =& dvwaSessionGrab();
	if( !isset( $dvwaSession[ 'messages' ] ) ) {
		$dvwaSession[ 'messages' ] = array();
	}
	$dvwaSession[ 'messages' ][] = $pMessage;
}


function dvwaMessagePop() {
	$dvwaSession =& dvwaSessionGrab();
	if( !isset( $dvwaSession[ 'messages' ] ) || count( $dvwaSession[ 'messages' ] ) == 0 ) {
		return false;
	}
	return array_shift( $dvwaSession[ 'messages' ] );
}


function messagesPopAllToHtml() {
	$messagesHtml = '';
	while( $message = dvwaMessagePop() ) {   // TODO- sharpen!
		$messagesHtml .= "<div class=\"message\">{$message}</div>";
	}

	return $messagesHtml;
}

// --END (message functions)

function dvwaHtmlEcho( $pPage ) {
	$menuBlocks = array();

	$menuBlocks[ 'home' ] = array();
	if( dvwaIsLoggedIn() ) {
		$menuBlocks[ 'home' ][] = array( 'id' => 'home', 'name' => 'Home', 'url' => '.' );
		$menuBlocks[ 'home' ][] = array( 'id' => 'instructions', 'name' => 'Instructions', 'url' => 'instructions.php' );
		$menuBlocks[ 'home' ][] = array( 'id' => 'setup', 'name' => 'Setup / Reset DB', 'url' => 'setup.php' );
	}
	else {
		$menuBlocks[ 'home' ][] = array( 'id' => 'setup', 'name' => 'Setup DVWA', 'url' => 'setup.php' );
		$menuBlocks[ 'home' ][] = array( 'id' => 'instructions', 'name' => 'Instructions', 'url' => 'instructions.php' );
	}

	if( dvwaIsLoggedIn() ) {
		$menuBlocks[ 'vulnerabilities' ] = array();
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'brute', 'name' => 'Brute Force', 'url' => 'vulnerabilities/brute/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'exec', 'name' => 'Command Injection', 'url' => 'vulnerabilities/exec/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'csrf', 'name' => 'CSRF', 'url' => 'vulnerabilities/csrf/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'fi', 'name' => 'File Inclusion', 'url' => 'vulnerabilities/fi/.?page=include.php' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'upload', 'name' => 'File Upload', 'url' => 'vulnerabilities/upload/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'captcha', 'name' => 'Insecure CAPTCHA', 'url' => 'vulnerabilities/captcha/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'sqli', 'name' => 'SQL Injection', 'url' => 'vulnerabilities/sqli/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'sqli_blind', 'name' => 'SQL Injection (Blind)', 'url' => 'vulnerabilities/sqli_blind/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'xss_r', 'name' => 'XSS (Reflected)', 'url' => 'vulnerabilities/xss_r/' );
		$menuBlocks[ 'vulnerabilities' ][] = array( 'id' => 'xss_s', 'name' => 'XSS (Stored)', 'url' => 'vulnerabilities/xss_s/' );
	}

	$menuBlocks[ 'meta' ] = array();
	if( dvwaIsLoggedIn() ) {
		$menuBlocks[ 'meta' ][] = array( 'id' => 'security', 'name' => 'DVWA Security', 'url' => 'security.php' );
		$menuBlocks[ 'meta' ][] = array( 'id' => 'phpinfo', 'name' => 'PHP Info', 'url' => 'phpinfo.php' );
	}
	$menuBlocks[ 'meta' ][] = array( 'id' => 'about', 'name' => 'About', 'url' => 'about.php' );

	if( dvwaIsLoggedIn() ) {
		$menuBlocks[ 'logout' ] = array();
		$menuBlocks[ 'logout' ][] = array( 'id' => 'logout', 'name' => 'Logout', 'url' => 'logout.php' );
	}

	$menuHtml = '';

	foreach( $menuBlocks as $menuBlock ) {
		$menuBlockHtml = '';
		foreach( $menuBlock as $menuItem ) {
			$selectedClass = ( $menuItem[ 'id' ] == $pPage[ 'page_id' ] ) ? 'selected' : '';
			$fixedUrl = DVWA_WEB_PAGE_TO_ROOT.$menuItem[ 'url' ];
			$menuBlockHtml .= "<li onclick=\"window.location='{$fixedUrl}'\" class=\"{$selectedClass}\"><a href=\"{$fixedUrl}\">{$menuItem[ 'name' ]}</a></li>\n";
		}
		$menuHtml .= "<ul class=\"menuBlocks\">{$menuBlockHtml}</ul>";
	}

	// Get security cookie --
	$securityLevelHtml = '';
	switch( dvwaSecurityLevelGet() ) {
		case 'low':
			$securityLevelHtml = 'low';
			break;
		case 'medium':
			$securityLevelHtml = 'medium';
			break;
		case 'high':
			$securityLevelHtml = 'high';
			break;
		default:
			$securityLevelHtml = 'impossible';
			break;
	}
	// -- END (security cookie)

	$phpIdsHtml   = '<em>PHPIDS:</em> ' . ( dvwaPhpIdsIsEnabled() ? 'enabled' : 'disabled' );
	$userInfoHtml = '<em>Username:</em> ' . ( dvwaCurrentUser() );

	$messagesHtml = messagesPopAllToHtml();
	if( $messagesHtml ) {
		$messagesHtml = "<div class=\"body_padded\">{$messagesHtml}</div>";
	}

	$systemInfoHtml = "";
	if( dvwaIsLoggedIn() )
		$systemInfoHtml = "<div align=\"left\">{$userInfoHtml}<br /><em>Security Level:</em> {$securityLevelHtml}<br />{$phpIdsHtml}</div>";
	if( $pPage[ 'source_button' ] ) {
		$systemInfoHtml = dvwaButtonSourceHtmlGet( $pPage[ 'source_button' ] ) . " $systemInfoHtml";
	}
	if( $pPage[ 'help_button' ] ) {
		$systemInfoHtml = dvwaButtonHelpHtmlGet( $pPage[ 'help_button' ] ) . " $systemInfoHtml";
	}

	// Send Headers + main HTML code
	Header( 'Cache-Control: no-cache, must-revalidate');   // HTTP/1.1
	Header( 'Content-Type: text/html;charset=utf-8' );     // TODO- proper XHTML headers...
	Header( 'Expires: Tue, 23 Jun 2009 12:00:00 GMT' );    // Date in the past

	echo "
<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">

<html xmlns=\"http://www.w3.org/1999/xhtml\">

	<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />

		<title>{$pPage[ 'title' ]}</title>

		<link rel=\"stylesheet\" type=\"text/css\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "dvwa/css/main.css\" />

		<link rel=\"icon\" type=\"\image/ico\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "favicon.ico\" />

		<script type=\"text/javascript\" src=\"" . DVWA_WEB_PAGE_TO_ROOT . "dvwa/js/dvwaPage.js\"></script>

	</head>

	<body class=\"home\">
		<div id=\"container\">

			<div id=\"header\">

				<img src=\"" . DVWA_WEB_PAGE_TO_ROOT . "dvwa/images/logo.png\" alt=\"Damn Vulnerable Web Application\" />

			</div>

			<div id=\"main_menu\">

				<div id=\"main_menu_padded\">
				{$menuHtml}
				</div>

			</div>

			<div id=\"main_body\">

				{$pPage[ 'body' ]}
				<br /><br />
				{$messagesHtml}

			</div>

			<div class=\"clear\">
			</div>

			<div id=\"system_info\">
				{$systemInfoHtml}
			</div>

			<div id=\"footer\">

				<p>Damn Vulnerable Web Application (DVWA) v" . dvwaVersionGet() . "</p>

			</div>

		</div>

	</body>

</html>";
}


function dvwaHelpHtmlEcho( $pPage ) {
	// Send Headers
	Header( 'Cache-Control: no-cache, must-revalidate');   // HTTP/1.1
	Header( 'Content-Type: text/html;charset=utf-8' );     // TODO- proper XHTML headers...
	Header( 'Expires: Tue, 23 Jun 2009 12:00:00 GMT' );    // Date in the past

	echo "
<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">

<html xmlns=\"http://www.w3.org/1999/xhtml\">

	<head>

		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />

		<title>{$pPage[ 'title' ]}</title>

		<link rel=\"stylesheet\" type=\"text/css\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "dvwa/css/help.css\" />

		<link rel=\"icon\" type=\"\image/ico\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "favicon.ico\" />

	</head>

	<body>

	<div id=\"container\">

			{$pPage[ 'body' ]}

		</div>

	</body>

</html>";
}


function dvwaSourceHtmlEcho( $pPage ) {
	// Send Headers
	Header( 'Cache-Control: no-cache, must-revalidate');   // HTTP/1.1
	Header( 'Content-Type: text/html;charset=utf-8' );     // TODO- proper XHTML headers...
	Header( 'Expires: Tue, 23 Jun 2009 12:00:00 GMT' );    // Date in the past

	echo "
<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">

<html xmlns=\"http://www.w3.org/1999/xhtml\">

	<head>

		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />

		<title>{$pPage[ 'title' ]}</title>

		<link rel=\"stylesheet\" type=\"text/css\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "dvwa/css/source.css\" />

		<link rel=\"icon\" type=\"\image/ico\" href=\"" . DVWA_WEB_PAGE_TO_ROOT . "favicon.ico\" />

	</head>

	<body>

		<div id=\"container\">

			{$pPage[ 'body' ]}

		</div>

	</body>

</html>";
}

// To be used on all external links --
function dvwaExternalLinkUrlGet( $pLink,$text=null ) {
	if(is_null( $text )) {
		return '<a href="http://hiderefer.com/?' . $pLink . '" target="_blank">' . $pLink . '</a>';
	}
	else {
		return '<a href="http://hiderefer.com/?' . $pLink . '" target="_blank">' . $text . '</a>';
	}
}
// -- END ( external links)

function dvwaButtonHelpHtmlGet( $pId ) {
	$security = dvwaSecurityLevelGet();
	return "<input type=\"button\" value=\"View Help\" class=\"popup_button\" onClick=\"javascript:popUp( '" . DVWA_WEB_PAGE_TO_ROOT . "vulnerabilities/view_help.php?id={$pId}&security={$security}' )\">";
}


function dvwaButtonSourceHtmlGet( $pId ) {
	$security = dvwaSecurityLevelGet();
	return "<input type=\"button\" value=\"View Source\" class=\"popup_button\" onClick=\"javascript:popUp( '" . DVWA_WEB_PAGE_TO_ROOT . "vulnerabilities/view_source.php?id={$pId}&security={$security}' )\">";
}


// Database Management --

if( $DBMS == 'MySQL' ) {
	$DBMS = htmlspecialchars(strip_tags( $DBMS ));
	$DBMS_errorFunc = 'mysql_error()';
}
elseif( $DBMS == 'PGSQL' ) {
	$DBMS = htmlspecialchars(strip_tags( $DBMS ));
	$DBMS_errorFunc = 'pg_last_error()';
}
else {
	$DBMS = "No DBMS selected.";
	$DBMS_errorFunc = '';
}

//$DBMS_connError = '
//	<div align="center">
//		<img src="' . DVWA_WEB_PAGE_TO_ROOT . 'dvwa/images/logo.png" />
//		<pre>Unable to connect to the database.<br />' . $DBMS_errorFunc . '<br /><br /></pre>
//		Click <a href="' . DVWA_WEB_PAGE_TO_ROOT . 'setup.php">here</a> to setup the database.
//	</div>';

function dvwaDatabaseConnect() {
	global $_DVWA;
	global $DBMS;
	//global $DBMS_connError;
	global $db;

	if( $DBMS == 'MySQL' ) {
		if( !@mysql_connect( $_DVWA[ 'db_server' ], $_DVWA[ 'db_user' ], $_DVWA[ 'db_password' ] )
		|| !@mysql_select_db( $_DVWA[ 'db_database' ] ) ) {
			//die( $DBMS_connError );
			dvwaLogout();
			dvwaMessagePush( 'Unable to connect to the database.<br />' . $DBMS_errorFunc );
			dvwaRedirect( DVWA_WEB_PAGE_TO_ROOT . 'setup.php' );
		}
		// MySQL PDO Prepared Statements (for impossible levels)
		$db = new PDO('mysql:host=' . $_DVWA[ 'db_server' ].';dbname=' . $_DVWA[ 'db_database' ].';charset=utf8', $_DVWA[ 'db_user' ], $_DVWA[ 'db_password' ]);
		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	}
	elseif( $DBMS == 'PGSQL' ) {
		//$dbconn = pg_connect("host={$_DVWA[ 'db_server' ]} dbname={$_DVWA[ 'db_database' ]} user={$_DVWA[ 'db_user' ]} password={$_DVWA[ 'db_password' ])}"
		//or die( $DBMS_connError );
		dvwaMessagePush( 'PostgreSQL is not yet fully supported.' );
		dvwaPageReload();
	}
	else {
		die ( "Unknown {$DBMS} selected." );
	}
}

// -- END (Database Management)


function dvwaRedirect( $pLocation ) {
	session_commit();
	header( "Location: {$pLocation}" );
	exit;
}

// XSS Stored guestbook function --
function dvwaGuestbook() {
	$query  = "SELECT name, comment FROM guestbook";
	$result = mysql_query( $query );

	$guestbook = '';

	while( $row = mysql_fetch_row( $result ) ) {
		if( dvwaSecurityLevelGet() == 'impossible' ) {
			$name    = htmlspecialchars( $row[0] );
			$comment = htmlspecialchars( $row[1] );
		}
		else {
			$name    = $row[0];
			$comment = $row[1];
		}

		$guestbook .= "<div id=\"guestbook_comments\">Name: {$name}<br />" . "Message: {$comment}<br /></div>\n";
	}
	return $guestbook;
}
// -- END (XSS Stored guestbook)


// Token functions --
function checkToken( $user_token, $session_token, $returnURL ) {  # Validate the given (CSRF) token
	if( $user_token !== $session_token || !isset( $session_token ) ) {
		dvwaMessagePush( 'CSRF token is incorrect' );
		dvwaRedirect( $returnURL );
	}
}

function generateSessionToken() {  # Generate a brand new (CSRF) token
	if( isset( $_SESSION[ 'session_token' ] ) ) {
		destroySessionToken();
	}
	$_SESSION[ 'session_token' ] = md5( uniqid() );
}

function destroySessionToken() {  # Destroy any session with the name 'session_token'
	unset( $_SESSION[ 'session_token' ] );
}

function tokenField() {  # Return a field for the (CSRF) token
	return "<input type='hidden' name='user_token' value='{$_SESSION[ 'session_token' ]}' />";
}
// -- END (Token functions)


// Setup Functions --
$PHPUploadPath    = realpath( getcwd() ) . "/hackable/uploads/";
$PHPIDSPath       = realpath( getcwd() ) . "/external/phpids/" . dvwaPhpIdsVersionGet() . "/lib/IDS/tmp/phpids_log.txt";

$phpDisplayErrors = 'PHP function display_errors: <em>' . ( ini_get( 'display_errors' )  ? 'Enabled</em> <i>(Easy Mode!)</i>' : 'Disabled</em>' );                // Verbose error messages (e.g. full path disclosure)
$phpSafeMode      = 'PHP function safe_mode: <span class="' . ( ini_get( 'safe_mode' )  ? 'failure">Enabled' : 'success">Disabled' ) . '</span>';                 // DEPRECATED as of PHP 5.3.0 and REMOVED as of PHP 5.4.0
$phpMagicQuotes   = 'PHP function magic_quotes_gpc: <span class="' . ( ini_get( 'magic_quotes_gpc' )  ? 'failure">Enabled' : 'success">Disabled' ) . '</span>';   // DEPRECATED as of PHP 5.3.0 and REMOVED as of PHP 5.4.0
$phpURLInclude    = 'PHP function allow_url_include: <span class="' . ( ini_get( 'allow_url_include' )  ? 'success">Enabled' : 'failure">Disabled' ) . '</span>'; // RFI
$phpURLFopen      = 'PHP function allow_url_fopen: <span class="' . ( ini_get( 'allow_url_fopen' )  ? 'success">Enabled' : 'failure">Disabled' ) . '</span>';     // RFI
$phpGD            = 'PHP module php-gd: <span class="' . (  ( extension_loaded( 'gd' ) && function_exists( 'gd_info' ) ) ? 'success">Installed' : 'failure">Missing' ) . '</span>';     // File Upload

$DVWARecaptcha    = 'reCAPTCHA key: <span class="' . ( ( isset( $_DVWA[ 'recaptcha_public_key' ] ) && $_DVWA[ 'recaptcha_public_key' ] != '' ) ? 'success">' . $_DVWA[ 'recaptcha_public_key' ] : 'failure">Missing' ) . '</span>';

$DVWAUploadsWrite = 'Writable folder ' . $PHPUploadPath . ': <span class="' . ( is_writable( $PHPUploadPath ) ? 'success">Yes)' : 'failure">No' ) . '</span>'; // File Upload
$DVWAPHPWrite     = 'Writable file ' . $PHPIDSPath . ': <span class="' . ( is_writable( $PHPIDSPath ) ? 'success">Yes' : 'failure">No' ) . '</span>';         // PHPIDS

$DVWAOS           = 'Operating system: <em>' . ( strtoupper(substr(PHP_OS, 0, 3)) === 'WIN' ? 'Windows' : '*nix' ) . '</em>';
$SERVER_NAME      = 'Web Server SERVER_NAME: <em>' . $_SERVER[ 'SERVER_NAME' ] . '</em>';   // CSRF
// -- END (Setup Functions)

?>
