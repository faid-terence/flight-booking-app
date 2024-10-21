import 'package:flight_booking_app/components/shared/my_counter_input.dart';
import 'package:flight_booking_app/components/shared/my_custom_button.dart';
import 'package:flight_booking_app/components/shared/my_date_picker.dart';
import 'package:flight_booking_app/components/shared/my_text_field.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Welcome Text
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Extreme',
                    style: TextStyle(
                      color: Colors.blue, // Make 'Extreme' blue
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  TextSpan(
                    text: '\nairplane flight',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            MyTextField(
              placeholder: "Where are you flying from?",
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 2),
            DatePickerInput(
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 24),
            PassengerCounter(
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 24),
            // Button
            MyCustomButton(
              text: 'Find Flights',
              onPressed: () {
                print('Search Flights');
              },
            ),
          ],
        ),
      ),
    );
  }
}
