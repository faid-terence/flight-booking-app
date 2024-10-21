import 'package:flight_booking_app/components/ui/explore_page.dart';
import 'package:flight_booking_app/components/ui/help_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // explore page
          const ExplorePage(),

          // Text
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: [
                Text(
                  "Helpful Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // HelpInfo
          HelpInfo(),
        ],
      ),
    );
  }
}
