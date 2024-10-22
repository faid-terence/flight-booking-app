import 'package:flight_booking_app/components/shared/settings_item.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final List<Map<String, dynamic>> settings = [
    {
      'text': 'Notifications',
      'icon': const Icon(Icons.notifications_none_outlined),
      'notificationCount': 2,
    },
    {
      'text': 'My tickets',
      'icon': const Icon(Icons.airplanemode_active),
      'notificationCount': null,
    },
    {
      'text': 'My cards',
      'icon': const Icon(Icons.credit_card_outlined),
      'notificationCount': 1,
    },
    {
      'text': 'Customer Service',
      'icon': const Icon(Icons.headset_mic_outlined),
      'notificationCount': null,
    },
    {
      'text': 'Settings',
      'icon': const Icon(Icons.settings_outlined),
      'notificationCount': null,
    },
    {
      'text': 'Logout',
      'icon': const Icon(Icons.logout),
      'notificationCount': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Profile Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/pac.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Icon(Icons.edit, size: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Tom Cruise',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '+1 555 555 55 55',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 80),
            // Settings List
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: settings
                      .map((setting) => SettingsItem(
                            text: setting['text'],
                            icon: setting['icon'],
                            notificationCount: setting['notificationCount'],
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
