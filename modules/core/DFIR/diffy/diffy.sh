#####
# https://github.com/opendiffy/diffy
#####

docker run -ti \
  -p 8880:8880 -p 8881:8881 -p 8888:8888 \
  diffy/diffy \
    -candidate=localhost:9992 \
    -master.primary=localhost:9990 \
    -master.secondary=localhost:9991 \
    -service.protocol=http \
    -summary.email="" \
    -summary.delay="5" \
    -serviceName="Test-Service" \
    -proxy.port=:8880 \
    -admin.port=:8881 \
    -http.port=:8888 \
    -rootUrl=localhost:8888
