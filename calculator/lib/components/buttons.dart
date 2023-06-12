import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Color col;
  final VoidCallback press;
  const Buttons(
      {super.key,
      required this.text,
      this.col = const Color.fromARGB(255, 157, 158, 166),
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 80,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: col,
          ),
          child: Text(
            text,
            style: GoogleFonts.jetBrainsMono(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
