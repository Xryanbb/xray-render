#!/bin/sh
PORT=${PORT:-10000}
cat > /opt/xray/config.json <<EOF
{"inbounds":[{"listen":"0.0.0.0","port":${PORT},"protocol":"vless","settings":{"clients":[{"id":"${UUID}"}],"decryption":"none"},"streamSettings":{"network":"ws","wsSettings":{"path":"${WS_PATH}"}}}],"outbounds":[{"protocol":"freedom"}]}
EOF
exec /opt/xray/xray run -config /opt/xray/config.json
