from flask import Flask
import requests
import os

app = Flask(__name__)


@app.route('/')
def index():
    requests.get("http://app2:5000/")
    return f'Web App with Python Flask! {os.getenv("TEST")}'


app.run(host='0.0.0.0', port=5000)
