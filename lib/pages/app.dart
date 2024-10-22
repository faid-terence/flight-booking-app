import 'package:flight_booking_app/components/ui/found_flights.dart';

import 'package:flight_booking_app/pages/main_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flights booking App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainPage(),
      routes: {
        "/found-flights": (context) => FoundFlights(),
      },
    );
  }
}
