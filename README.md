# xray-direct for dcdeploy

Minimal xray VLESS+WS, no Argo tunnel. Listens on port 3000.

## Deploy on dcdeploy
- Source: this repo (Dockerfile build)
- Port: 3000/https
- Env: `UUID` = your VLESS UUID (required)

## Client
`vless://UUID@<app-domain>:443?encryption=none&security=tls&sni=<app-domain>&type=ws&host=<app-domain>&path=/vless`
