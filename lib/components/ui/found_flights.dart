import 'package:flight_booking_app/components/shared/flight_cards.dart';
import 'package:flight_booking_app/components/shared/my_text_field.dart';
import 'package:flutter/material.dart';

class FoundFlights extends StatelessWidget {
  FoundFlights({super.key});

  // List of found flights
  final List<Map<String, dynamic>> foundFlights = [
    {
      "image": "assets/Rectangle 2.png",
      "price": 200,
      "from": "New York",
      "to": "Los Angeles",
      "date": "12/12/2021",
      "time": "12:00 PM",
    },
    {
      "image": "assets/british.jpeg",
      "price": 300,
      "from": "New York",
      "to": "Los Angeles",
      "date": "12/12/2021",
      "time": "12:00 PM",
    },
    {
      "image": "assets/RwandAir1-1024x468.jpg",
      "price": 400,
      "from": "New York",
      "to": "Los Angeles",
      "date": "12/12/2021",
      "time": "12:00 PM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Search bar with back button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: MyTextField(
                      placeholder: "Search for flights",
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Found Flights header
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Found Flights',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // List of Flights
            Expanded(
              child: ListView.builder(
                itemCount: foundFlights.length,
                itemBuilder: (context, index) {
                  return FlightCards(
                    flightName:
                        "${foundFlights[index]['from']} - ${foundFlights[index]['to']}",
                    flightTime: foundFlights[index]
                        ['time'], // Correctly passing flight time
                    flightPrice: foundFlights[index]['price']
                        .toString(), // Correctly passing flight price
                    image: foundFlights[index]
                        ['image'], // Passing the image path
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
