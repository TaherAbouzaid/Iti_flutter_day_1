import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TodoItem extends StatelessWidget {
  final String title;
  final String tag;
  final DateTime date;

  const TodoItem({
    super.key,
    required this.title,
    required this.tag,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('d MMMM yyyy').format(date);
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tag,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(Icons.circle, size: 10, color: Colors.green),
              const SizedBox(width: 6),
              Text(
                formattedDate,
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}