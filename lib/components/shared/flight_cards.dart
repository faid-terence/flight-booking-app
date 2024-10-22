import 'package:flutter/material.dart';

class FlightCards extends StatelessWidget {
  final String flightName;
  final String flightTime;
  final String flightPrice;
  final String image; // Added for dynamic image

  const FlightCards({
    super.key,
    required this.flightName,
    required this.flightTime,
    required this.flightPrice,
    required this.image, // New parameter for image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          // Flight Card
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                // Flight Image
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image), // Use the dynamic image
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                // Flight Details
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Flight Name
                      Text(
                        flightName, // Use the dynamic flight name
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Flight Details
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          // Flight Time
                          Text(
                            "Time: $flightTime", // Use dynamic flight time
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),

                          // Flight Price
                          const Spacer(),
                          Text(
                            "\$$flightPrice", // Use dynamic flight price
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
