
class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
     required this.city,
     required this.dateTime,
     required this.temparature,
     required this.weatherType,
     required this.iconUrl,
     required this.wind,
     required this.rain,
     required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Najran',
    dateTime: '02:04 PM — Monday, 6 Nov 2023',
    temparature: '24\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'Abha',
    dateTime: '02:20 PM — Monday, 6 Nov 2023',
    temparature: '15\u2103',
    weatherType: 'Rainy',
    iconUrl: 'weather_app\assets\rain.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Riyadh',
    dateTime: '09:20 AM — Monday, 6 Nov 2023',
    temparature: '23\u2103',
    weatherType: 'Night',
    iconUrl: 'weather_app\assets\moon.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Jeddah',
    dateTime: '01:20 AM — Tuesday, 6 Nov 202',
    temparature: '29\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'weather_app\assets\cloudy (1).svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];