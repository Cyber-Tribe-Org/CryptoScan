import sys
from os import path


__all__ = [
    "HERE", "BASE_DIR"
]

HERE = path.abspath(path.dirname(__file__))

if getattr(sys, 'frozen', False):
    BASE_DIR = path.abspath(sys._MEIPASS)
else:
    BASE_DIR = path.abspath(path.dirname(__file__))

# Configuration
from starlette.config import Config

CONF = Config(".env")

__version__ = CONF("APP_VERSION", default='v0.0.0')


# FastAPI Server
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
app = FastAPI(
    title='REST API AIfund Data Management system',
    version = CONF("APP_VERSION", default='v0.0.0')
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


