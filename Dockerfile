FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99
RUN apt-get update && apt-get install -y xvfb x11vnc novnc websockify chromium-browser xfce4 xfce4-terminal dbus-x11 supervisor curl && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
EXPOSE 8080
CMD ["/app/start.sh"]
