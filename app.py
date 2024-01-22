
from flask import Flask, request, jsonify
from flask_cors import CORS
import requests

app = Flask(__name__)
CORS(app)

# Replace 'YOUR_API_KEY' with your actual OpenWeatherMap API key
OPENWEATHERMAP_API_KEY = 'ee4b9b1e8cad2bc72ca10ab20ab190df'
OPENWEATHERMAP_API_URL = 'http://api.openweathermap.org/data/2.5/weather'

@app.route('/weather', methods=['GET'])
def get_weather():
    city = request.args.get('city')

    if not city:
        return jsonify({'error': 'City parameter is missing'}), 400

    params = {
        'q': city,
        'appid': OPENWEATHERMAP_API_KEY,
        'units': 'metric',  # You can change units to 'imperial' for Fahrenheit
    }

    response = requests.get(OPENWEATHERMAP_API_URL, params=params)

    if response.status_code == 200:
        weather_data = response.json()
        return jsonify(weather_data)
    else:
        return jsonify({'error': 'Failed to retrieve weather data'}), response.status_code

@app.route('/ok', methods=['GET'])
def get_ok():
    return jsonify({'status': 'OK'})

if __name__ == '__main__':
    app.run(port=5002)
