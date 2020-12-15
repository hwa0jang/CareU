from flask import Flask, render_template, request, redirect, url_for
import sqlite3

app = Flask(__name__)


@app.route('/')
def start():
        return render_template('main.html')

@app.route('/family')
def family():
        db = sqlite3.connect("hospital.db")
        db.row_factory = sqlite3.Row
        items = db.execute(
                'select Pname, fnumber, relation, fname from family, patient, enrollment where id=p_id and fnumber=f_number'
        ).fetchall()
        db.close()
        return render_template('family.html', items=items)




@app.route('/medical_staff')
def medical():
        db = sqlite3.connect("hospital.db")
        db.row_factory = sqlite3.Row
        itmed = db.execute(
                'select Medical_staff.id, doctor, nurse, caregiver from Medical_staff'
        ).fetchall()
        db.close()
        return render_template('Medical_staff.html',items=itmed)

@app.route('/care')
def care():
        return render_template('care.html')


		
@app.route('/add', methods=["POST", "GET"])
def add():
                        p_id = request.form["p_id"]
                        m_id = request.form["m_id"]
                        dates = request.form["dates"]
                        breakfast = request.form["breakfast"]
                        lunch = request.form["lunch"]
                        dinner = request.form["dinner"]
                        medicine = request.form["medicine"]
                        blood_sugar = request.form["blood_sugar"]
                        blood_pressure = request.form["blood_pressure"]
                        bath = request.form["bath"]
                        overnight = request.form["overnight"]
                        db = sqlite3.connect("hospital.db")
                        cur=db.cursor()
                        cur.execute("insert into care values (?,?,?,?,?,?,?,?,?,?,?)",(p_id, m_id, dates, breakfast, lunch, dinner, medicine, blood_sugar, blood_pressure, bath, overnight) )
                        db.commit()
                        db.close()
                        return render_template("add.html")

@app.route('/view')
def view():
        db = sqlite3.connect("hospital.db")
        db.row_factory = sqlite3.Row
        items = db.execute('select * from care'
        ).fetchall()
        return render_template("view.html",rows=items)

if __name__ == '__main__':
    app.debug = True
    app.run(host='127.0.0.1',port=5000)

