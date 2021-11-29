from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return Hello, it is the test app for CI for github!!!!!!!!!!!1 BREAK'

app.run(host='0.0.0.0', port=81)
