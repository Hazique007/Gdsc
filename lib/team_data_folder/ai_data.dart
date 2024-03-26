import 'package:flutter/material.dart';
import 'package:gdsc/team_data_folder/consts.dart';
import 'package:gdsc/team_data_folder/team_aii.dart';
import 'package:gdsc/team_data_folder/team_mentor.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTeamDataAI extends StatefulWidget {
  const MyTeamDataAI({super.key});

  @override
  State<MyTeamDataAI> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamDataAI> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: MYTEAMAI.length,
        itemBuilder: (context, index) {
         MyGdscTeamAI myGdscTeamAI= MYTEAMAI[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(myGdscTeamAI.name),
              subtitle: Text(myGdscTeamAI.position),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: myGdscTeamAI.imageurl,
                    width: 50.0,
                  )),
            ),
          );
        });

  }
}
