import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final int count;

  const SectionTitle({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
   
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF0F0F0),
          ),
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            "$count",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}