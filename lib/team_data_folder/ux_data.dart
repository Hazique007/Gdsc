import 'package:flutter/material.dart';

import 'package:gdsc/team_data_folder/team_ux.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTeamDataUX extends StatefulWidget {
  const MyTeamDataUX({super.key});

  @override
  State<MyTeamDataUX> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamDataUX> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: MYTEAMUX.length,
        itemBuilder: (context, index) {
          MyGdscTeamUX myGdscTeamUX= MYTEAMUX[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(myGdscTeamUX.name),
              subtitle: Text(myGdscTeamUX.position),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: myGdscTeamUX.imageurl,
                    width: 50.0,
                  )),
            ),
          );
        });

  }
}
