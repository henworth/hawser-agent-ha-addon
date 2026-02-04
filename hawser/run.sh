#!/usr/bin/with-contenv sh

echo "[INFO] Hawser HA add-on starting in Standard mode"
# echo "[INFO] Dockhand URL: ${dockhand_server_url}"

if [ ! -S /var/run/docker.sock ]; then
  echo "[ERROR] Docker socket NOT found"
  # ls -l /var/run || true
  echo "[DEBUG] $(ls -l /var/run)"
  exit 1
fi

echo "[INFO] Docker socket found"

exec hawser \
  --log-level debug

  # --server "${dockhand_server_url}" \
  # --token "${token}" \
