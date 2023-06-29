import 'package:first_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(right: 14, top: 7),
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 20,
            // changes the position of the shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.orange[800],
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bedroom1.jpg"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Open Space",
            style: GoogleFonts.poppins(fontSize: 17, color: Colors.white),
          ),
          Text(
            "London",
            style: GoogleFonts.manrope(fontSize: 16, color: Colors.white),
          ),
          Text(
            "\$40/night",
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
