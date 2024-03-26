import 'package:flutter/material.dart';
import 'package:gdsc/team_data_folder/ai_data.dart';
import 'package:gdsc/team_data_folder/and_data.dart';
import 'package:gdsc/team_data_folder/consts.dart';
import 'package:gdsc/reusable/team_data.dart';
import 'package:gdsc/team_data_folder/mentor_data.dart';
import 'package:gdsc/team_data_folder/ux_data.dart';
import 'package:gdsc/team_data_folder/web_data.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          'Our Team',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,color: Theme.of(context).colorScheme.secondary),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'GDSC Lead',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: SingleChildScrollView(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xfffebedef),
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 100,
                      child: MyTeamData()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Mentor',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                  height: 550,
                  child: MyTeamDataMentor()),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'AI/ML Team',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 300,
                child: MyTeamDataAI(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Android Team',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 180,
                child: MyTeamDataAnd(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Web/Tech Team',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 620,
                child: MyTeamDataWeb(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'UI/UX Team',
                  style: GoogleFonts.montserrat(
                      fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 300,
                child: MyTeamDataUX(),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
