import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String progress;
  final Color backgroundColor;
  final List<String> avatars;
  final String illustration;

  TaskCard({
    required this.title,
    required this.progress,
    required this.backgroundColor,
    required this.avatars,
    required this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: avatars
                      .map((avatar) => CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 16,
                      ))
                      .toList(),
                ),
                Image.asset(
                  illustration,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              progress,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}