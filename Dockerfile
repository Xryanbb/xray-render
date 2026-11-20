FROM alpine:3.20
RUN apk add --no-cache curl unzip && curl -L -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && mkdir -p /opt/xray && unzip /tmp/xray.zip -d /opt/xray && chmod +x /opt/xray/xray
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
