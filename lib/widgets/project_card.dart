import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String time;
  final List<String> avatars;
  final Color dotColor;

  ProjectCard({
    required this.title,
    required this.time,
    required this.avatars,
    required this.dotColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 121,
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Color(0xFFB5B5B5),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Dot and Text Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Colored Dot
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: dotColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 8), // Space between dot and text
                // Title and Time
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            // Avatars
            SizedBox(
              width: 80, 
              height: 40, 
              child: Stack(
                children: avatars.asMap().entries.map((entry) {
                  int index = entry.key;
                  String avatar = entry.value;
                  return Positioned(
                    left: index * 20.0, // Overlap the avatars by 20 pixels
                    child: CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                      radius: 16,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}