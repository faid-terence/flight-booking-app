import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final String text;
  final Icon icon;
  final int? notificationCount;

  const SettingsItem({
    super.key,
    required this.text,
    required this.icon,
    this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Icon with specific styling
          Container(
            margin: const EdgeInsets.only(right: 12),
            child: Icon(
              icon.icon,
              color: Colors.blue,
              size: 24,
            ),
          ),

          // Text with specific styling
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2C3E50),
              ),
            ),
          ),

          // Notification badge if count exists
          if (notificationCount != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                notificationCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          // Forward arrow icon
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
