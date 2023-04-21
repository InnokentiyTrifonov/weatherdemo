import 'package:flutter/material.dart';
import '../componets/feels_like.dart';
import '../componets/humidity.dart';
import '../componets/local_date_time.dart';
import '../componets/location_text.dart';
import '../componets/observation_time.dart';
import '../componets/precip.dart';
import '../componets/pressure.dart';
import '../componets/temperature.dart';
import '../componets/uv_index.dart';
import '../componets/visibility.dart';
import '../componets/weather_desc.dart';
import '../componets/wind_direction.dart';
import '../componets/wind_speed.dart';
import '../models/weather.dart';
import '../services/get_weather.dart';
import 'error_page.dart';
import 'location_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<WeatherResponse> futureWeather;
  String? location;

  void backGroundImage() {}

  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    setState(() {
      futureWeather = getWeatherFromApi(location: location);
    });
  }

  void setLocation(String? newLocation) {
    setState(() {
      location = newLocation;
    });
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: FutureBuilder(
            future: futureWeather,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data!;
                return RefreshIndicator(
                  onRefresh: () async {
                    fetch();
                  },
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10, left: 10, bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              width: size.width,
                              height: size.height * 0.79,
                              padding: const EdgeInsets.only(top: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/${data.currentCondition[0].weatherDesc[0].value}.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  LocationScreen(
                                                    setLocation: setLocation,
                                                  ))));
                                    },
                                    child: LocationText(
                                        locationText: data
                                            .nearestArea[0].areaName[0].value),
                                  ),
                                  Localdatetime(
                                      localdatetimeText: data
                                          .currentCondition[0]
                                          .localObsDateTime),
                                  const SizedBox(height: 45),
                                  TemperatureDesc(
                                      weatherDesc: data.currentCondition[0]
                                          .weatherDesc[0].value),
                                  Temperature(
                                      tempC: data.currentCondition[0].tempC),
                                  const SizedBox(height: 170),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Image.asset('assets/wind.png',
                                              width: size.width * 0.13),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          WindSpeed(
                                              windspeedKmph: data
                                                  .currentCondition[0]
                                                  .windspeedKmph),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Wind',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Image.asset('assets/humidity.png',
                                              width: size.width * 0.15),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Huminidy(
                                              humidity: data.currentCondition[0]
                                                  .humidity),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Humidity',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/wind-direction.png',
                                              width: size.width * 0.15),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          WindDirection(
                                              winddir16Point: data
                                                  .currentCondition[0]
                                                  .winddir16Point),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Wind direction',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text('Feels like',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 15)),
                                    const SizedBox(height: 5),
                                    FeelsLike(
                                        feelsLikeC: data
                                            .currentCondition[0].feelsLikeC),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Pressure',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 5),
                                    Pressure(
                                        pressure:
                                            data.currentCondition[0].pressure),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      'UV',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 5),
                                    UvIndex(
                                        uvIndex:
                                            data.currentCondition[0].uvIndex),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Precipitation',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 5),
                                    Precip(
                                        precipMM:
                                            data.currentCondition[0].precipMM),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      'Visibility',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 5),
                                    WeatherVisibility(
                                        visibility: data
                                            .currentCondition[0].visibility),
                                    const SizedBox(height: 15),
                                    Text(
                                      'Last update',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 8),
                                    ObservationTime(
                                        observationTime: data
                                            .currentCondition[0]
                                            .observationTime),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return ErrorPage(
                  onRetry: fetch,
                );
              }
            }));
  }
}
