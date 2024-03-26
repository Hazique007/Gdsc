import 'package:flutter/material.dart';
import 'package:gdsc/reusable/past_events.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsCards extends StatelessWidget {
  const EventsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Text(
              'Events',
              style: GoogleFonts.montserrat(
                  fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
              child: Text(
            'Upcoming ',
            style: GoogleFonts.montserrat(
                fontSize: 18.0, fontWeight: FontWeight.bold),
          )),
          Center(child: Text('No upcoming events')),

          SizedBox(height: 60.0,),

          Center(
              child: Text(
                'Past ',
                style: GoogleFonts.montserrat(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              )),
          Container(
              height: 300,
              child: PastEvents()),
        ],
      ),
    );
  }
}
