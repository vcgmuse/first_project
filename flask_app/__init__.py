from flask import Flask
import secrets
app_key = secrets.token_hex(32)
app = Flask(__name__)
app.secret_key = app_key

