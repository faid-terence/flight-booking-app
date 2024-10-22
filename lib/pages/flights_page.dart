import 'package:flight_booking_app/components/ui/flight_search.dart';
import 'package:flutter/material.dart';

class FlightsPage extends StatelessWidget {
  const FlightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      // Flight Search Section
      children: [FlightSearch()],
    );
  }
}
