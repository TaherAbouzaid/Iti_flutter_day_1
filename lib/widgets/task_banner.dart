import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskBanner extends StatelessWidget {
  const TaskBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: const Color(0xFF00ACC1),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  
                  "2/10 Tasks",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Image(
              image: AssetImage("assets/images/Group.png"),
              height: 100,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 50),
            ),
          ),
        ],
      ),
    );
  }
}