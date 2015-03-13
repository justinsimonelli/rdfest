# routes.py
from flask import Flask, render_template
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

@app.route("/test/")
def test():
    return "it works, test! holy shit!"