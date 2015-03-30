# routes.py
from flask import Flask, render_template, request
app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/payment/")
def payment():
    return render_template("payment.html")

@app.route("/thanks/")
def thanks():
    return render_template("thanks.html")

@app.route("/update-user/", methods=['GET'])
def update():
    person = request.args.get('person');
    status = request.args.get('status');
    newPerson = request.args.get('addPerson')
    return "good"

@app.route("/test/")
def test():
    return "it works, test! holy shit!"