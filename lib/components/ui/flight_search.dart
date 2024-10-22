import 'package:flight_booking_app/components/shared/my_counter_input.dart';
import 'package:flight_booking_app/components/shared/my_custom_button.dart';
import 'package:flight_booking_app/components/shared/my_date_picker.dart';
import 'package:flight_booking_app/components/shared/my_text_field.dart';
import 'package:flutter/material.dart';

class FlightSearch extends StatelessWidget {
  const FlightSearch({super.key});

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
                    text: 'Split the payment',
                    style: TextStyle(
                      color: Colors.blue, // Make 'Extreme' blue
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  TextSpan(
                    text: '\nwith other passengers',
                    style: TextStyle(
                      fontSize: 26,
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
              placeholder: "from?",
              onChanged: (value) {
                print(value);
              },
            ),

            MyTextField(
              placeholder: "Where to?",
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 24),
            DatePickerInput(
              placeholder: "Date of Departure",
              onChanged: (value) {
                print(value);
              },
            ),

            const SizedBox(height: 24),
            DatePickerInput(
              placeholder: "Date of arrival",
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
