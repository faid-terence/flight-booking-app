import 'package:flutter/material.dart';
import 'package:flight_booking_app/components/shared/flight_stories.dart';

class HelpInfo extends StatelessWidget {
  HelpInfo({super.key});

  // Array of help information and Images
  final List<Map<String, dynamic>> helpInfo = [
    {
      'backgroundImage': 'assets/background.png',
      'title': 'Why are the airplanes white?',
    },
    {
      'backgroundImage': 'assets/backgound-2.png', // Corrected spelling
      'title': '5 interesting facts about airplanes',
    },
    {
      'backgroundImage': 'assets/backgound-3.png', // Corrected spelling
      'title': 'We lose alot of water on airplanes',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Allows horizontal scrolling
        itemCount: helpInfo.length,
        itemBuilder: (context, index) {
          // Wrap the FlightStories with Padding to create space
          return Padding(
            padding: const EdgeInsets.only(left: 25), // Adds space to the right
            child: FlightStories(
              backgroundImage: helpInfo[index]
                  ['backgroundImage'], // Ensure this is not null
              title: helpInfo[index]['title'], // Ensure this is not null
            ),
          );
        },
      ),
    );
  }
}
