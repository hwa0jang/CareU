from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def start():
        return render_template('main.html')

@app.route('/family')
def family():
        return render_template('family.html')

@app.route('/medical_staff')
def medical():
        return render_template('medical_staff.html')

@app.route('/care')
def care():
        return render_template('care.html')

if __name__ == '__main__':
    app.debug = True
    app.run(host='127.0.0.1',port=5000)

