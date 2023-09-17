import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
from flask import Flask, render_template, jsonify, request
import threading
import time



cred = credentials.Certificate("boiler-bites-firebase-adminsdk-d6gb7-dd8e0a06e5.json")
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://boiler-bites-default-rtdb.firebaseio.com'
})


ref = db.reference()


app = Flask(__name__)

last_data = None
ear_data = None
ford_data = None
wiley_data = None
windsor_data = None


def check_for_updates_earhart():
    global ear_data
    while True:
        data = ref.child('Reservations/Earhart').get()
        
        if data != ear_data:
            print("Database updated for Earhart:", data)
            ear_data = data
        
        time.sleep(1)


def check_for_updates_ford():
    global ford_data
    while True:
        data = ref.child('Reservations/Ford').get()
        
        if data != ford_data:
            print("Database updated for Ford:", data)
            ford_data = data
        
        time.sleep(1)


def check_for_updates_wiley():
    global wiley_data
    while True:
        data = ref.child('Reservations/Wiley').get()
        
        if data != wiley_data:
            print("Database updated for Wiley:", data)
            wiley_data = data
        
        time.sleep(1)


def check_for_updates_windsor():
    global windsor_data
    while True:
        data = ref.child('Reservations/Windsor').get()
        
        if data != windsor_data:
            print("Database updated for Windsor:", data)
            windsor_data = data
        
        time.sleep(1)


@app.route('/get_data_earhart', methods=['GET'])
def get_data_earhart():
    global ear_data
    update_thread = threading.Thread(target=check_for_updates_earhart)
    update_thread.start()
    return jsonify(ear_data)

@app.route('/get_data_ford', methods=['GET'])
def get_data_ford():
    global ford_data
    update_thread = threading.Thread(target=check_for_updates_ford)
    update_thread.start()
    return jsonify(ford_data)

@app.route('/get_data_wiley', methods=['GET'])
def get_data_wiley():
    global wiley_data
    update_thread = threading.Thread(target=check_for_updates_wiley)
    update_thread.start()
    return jsonify(wiley_data)

@app.route('/get_data_windsor', methods=['GET'])
def get_data_windsor():
    global windsor_data
    update_thread = threading.Thread(target=check_for_updates_windsor)
    update_thread.start()
    return jsonify(windsor_data)




def check_for_updates():
    global last_data
    while True:
       
        data = ref.child('Reservations/Hillenbrand').get()
        
        if data != windsor_data:
            print("Database updated for Hillenbrand:", data)
            last_data = data
        
        time.sleep(1)


@app.route('/get_data', methods=['GET'])
def get_data():
    global last_data
    update_thread = threading.Thread(target=check_for_updates)
    update_thread.start()
    return jsonify(last_data)


@app.route('/')
def main():
    return render_template('index.html')

@app.route('/hillenbrand')
def hilly():
    return render_template('hillenbrand.html')

@app.route('/windsor')
def wind():
    return render_template('windsor.html')

@app.route('/wiley')
def wil():
    return render_template('wiley.html')

@app.route('/earhart')
def ear():
    return render_template('earhart.html')

@app.route('/ford')
def fordy():
    return render_template('ford.html')

@app.route('/delete_reservation', methods=['GET'])
def delete_reservation():
    try:
        
        key = request.args.get('key')
        dining_hall = request.args.get('dining_hall')

        
        if key is None:
            return jsonify({'error': 'Key parameter missing'}), 400

        reservation_ref = ref.child('Reservations/' + dining_hall + '/' + key)  # Adjust the path as needed

        
        if reservation_ref.get() is None:
            return jsonify({'error': 'Reservation not found'}), 404

        
        reservation_ref.delete()

        
        return jsonify({'message': 'Reservation deleted successfully'}), 200

    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run()
