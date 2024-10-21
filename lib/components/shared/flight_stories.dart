import 'package:flutter/material.dart';

class FlightStories extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final TextStyle titleStyle;

  const FlightStories({
    super.key,
    required this.backgroundImage,
    required this.title,
    this.height = 180,
    this.width = 180,
    this.padding =
        const EdgeInsets.all(12), // Changed padding to be more reasonable
    TextStyle? titleStyle,
  }) : titleStyle = titleStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Colors.black.withOpacity(0.7),
              Colors.transparent,
            ],
          ),
        ),
        padding: padding,
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: titleStyle,
          ),
        ),
      ),
    );
  }
}
