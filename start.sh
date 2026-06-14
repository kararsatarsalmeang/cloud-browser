#!/bin/bash
echo "🚀 Starting Cloud Browser..."
mkdir -p /run/dbus
dbus-daemon --system --fork 2>/dev/null || true
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
