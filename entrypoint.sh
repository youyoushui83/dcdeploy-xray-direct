#!/bin/sh
if [ -z "$UUID" ]; then
  echo "ERROR: UUID env var not set"
  exit 1
fi
sed "s/UUID_PLACEHOLDER/${UUID}/g" /etc/xray/config.template.json > /etc/xray/config.json
echo "Starting xray on port 3000..."
exec xray run -c /etc/xray/config.json
