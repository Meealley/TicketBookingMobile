import 'package:first_app/utils/app_layout.dart';
import 'package:first_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.90,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          // container responsible for shoowing the deep Orange part of the ticket
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style:
                        GoogleFonts.manrope(fontSize: 17, color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  ThickConatainer(),
                  Expanded(
                      child: Stack(children: [
                    SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          print(
                              "The width is  + ${constraints.constrainWidth()}");
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ])),
                  ThickConatainer(),
                  Expanded(child: Container()),
                  Text(
                    "NGN",
                    style:
                        GoogleFonts.manrope(fontSize: 17, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text("New York",
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: Colors.white)),
                  ),
                  Text("8H 30M",
                      style:
                          GoogleFonts.lato(fontSize: 14, color: Colors.white)),
                  SizedBox(
                    width: 100,
                    child: Text("London",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: Colors.white)),
                  )
                ],
              )
            ]),
          ),

          /* this is the container showing the Blue Part of the ticket */
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            child: Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ))
            ]),
          ),

          // this is the bottom part of the ticket
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 July",
                        style: GoogleFonts.manrope(
                            fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "08:00 AM",
                        style: GoogleFonts.manrope(
                            fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        "Departure Time",
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "23",
                        style: GoogleFonts.manrope(
                            fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        "Number",
                        style: GoogleFonts.manrope(
                            fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  

                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
