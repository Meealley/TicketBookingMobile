import 'package:first_app/screeens/hotel_screen.dart';
import 'package:first_app/screeens/ticket_veiew.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning ☀️, Oyewale",
                          style: GoogleFonts.manrope(fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book ticket",
                          style: GoogleFonts.manrope(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/flightlogo.jpeg"))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("Search...",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.black26))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming flights",
                      style: GoogleFonts.manrope(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () => {print("You are tapped!")},
                      child: Text(
                        "View all",
                        style: GoogleFonts.manrope(
                            fontSize: 17, color: Colors.blue[600]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: GoogleFonts.manrope(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () => {print("You are tapped!")},
                  child: Text(
                    "View all",
                    style: GoogleFonts.manrope(
                        fontSize: 17, color: Colors.blue[600]),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                HotelScreen(),
                HotelScreen(),
                HotelScreen(),
                HotelScreen()
              ],
            ),
          )
        ],
      ),
    );
  }
}
