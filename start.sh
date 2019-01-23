#!/bin/sh
set -e

if [ ! -f "${MY_FILES}/ngrokd" ]; then
    echo "ngrokd is not build,will be build it now..."
    /bin/sh /build.sh
	chmod 777 ${MY_FILES}/ngrokd
fi
${MY_FILES}/ngrokd -tlsKey=/cert/server.key -tlsCrt=/cert/server.crt -domain="${DOMAIN}" -httpAddr=":${HTTP_ADDR}" -httpsAddr=":${HTTPS_ADDR}" -tunnelAddr=":${TUNNEL_ADDR}"
