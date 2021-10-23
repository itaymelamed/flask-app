from flask import Flask
import requests

app = Flask(__name__)


@app.route('/')
def index():
    requests.get("http://app2:5000/")
    return 'Web App with Python Flask!'


app.run(host='0.0.0.0', port=5000)
