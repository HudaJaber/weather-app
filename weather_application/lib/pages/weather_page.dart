//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:weather_application/models/weather_model.dart';
import 'package:weather_application/services/weather_service.dart';

class WeatherPage extends StatefulWidget{
  const WeatherPage({super.key});
  @override
  State<WeatherPage> createState() => _WeatherPageState();

}
class _WeatherPageState extends State<WeatherPage>{
  //api key
  final _weatherService = WeatherService('3aa9c7e90050bac92401f0cb904d64d1');
  Weather? _weather;

  //fetch weather
  _fetchWeather() async{
    //get current city
    String cityName = await _weatherService.getCurrentCity();
    //get weather for city
    try {
      final Weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = Weather;
      });
    }
    // any errors
    catch (e){
      print(e);
    }
  }
  //weather animation

  //init state

   @override
   Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //city name
          Text(_weather?.cityName ??"loading city.."),
          //temperature
          Text('${_weather?.temperature.round()}°C')
        ],
        )
        
      )
    );
   }

}