# routes.py
from flask import Flask, render_template, request, jsonify, abort
from flaskext.mysql import MySQL
import time

mysql = MySQL()
app = Flask(__name__)

app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'rdfest'
app.config['MYSQL_DATABASE_PASSWORD'] = 'X2yUWvxGB3gsygodFmxXFKnjt'
app.config['MYSQL_DATABASE_DB'] = 'rdfest'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/payment/")
def payment():
    users = user_query("select * from payments")
    if users is None:
        users = {}

    return render_template("payment.html", users=users)

@app.route("/update-user/", methods=['POST'])
def update_user():
    data = request.json
    if(data is None):
        abort(400);
    else:
        if( (data['newPerson']) and (not data['personId']) ):
            print 'inserting'
            q = 'INSERT INTO rdfest.payments (name, status) VALUES (%s, %s)'
            args = (data['newPerson'], data['status'])

        elif((not data['newPerson']) and (data['personId'])):
            print 'updating'
            q = 'UPDATE rdfest.payments set status=%s where id=%s'
            args = (data['status'], int(data['personId']))
        cursor.execute(q, args)
        conn.commit()

    return "ok"




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

def user_query( query, one=False ):
    print "inside user_query: query=" + query
    cursor.execute(query)
    rows= {}
    for row in cursor:
        rows[row[0]] = {
            'id': row[0],
            'name': row[1],
            'status': row[2],
            'date_inserted': row[3]
        }
    return rows

if __name__ == "__main__":
    app.run(debug=True)