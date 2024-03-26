import 'package:flutter/material.dart';
import 'package:gdsc/team_data_folder/consts.dart';
import 'package:gdsc/team_data_folder/team_mentor.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTeamDataMentor extends StatefulWidget {
  const MyTeamDataMentor({super.key});

  @override
  State<MyTeamDataMentor> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamDataMentor> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      scrollDirection: Axis.vertical,
        itemCount: MYTEAMMENTOR.length,
        itemBuilder: (context, index) {
          MyGdscTeamMentor myGdscTeamMentor = MYTEAMMENTOR[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(myGdscTeamMentor.name),
              subtitle: Text(myGdscTeamMentor.position),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: myGdscTeamMentor.imageurl,
                    width: 50.0,
                  )),
            ),
          );
        });

  }
}
