import uvicorn
from crypto_scan import CONF, app

if __name__ == '__main__':
    uvicorn.run(
        "crypto_scan:app",
        host="0.0.0.0",
        port=int(CONF("port", default='8000')),
        reload=True,
        proxy_headers=True)