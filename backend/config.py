import os
from dotenv import load_dotenv

load_dotenv()

class Config:
    SECRET_KEY = os.getenv('SECRET_KEY', 'secret-key-dashboard')
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://u472469844_est11:#Bd00011@srv1006.hstgr.io:3306/u472469844_est11'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    CORS_HEADERS = 'Content-Type'