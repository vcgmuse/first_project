from flask_app import app
from flask import render_template
from flask_app.controllers import index

@app.route('/')
def home():
    return render_template('index.html')