import 'package:flutter/material.dart';

import 'package:gdsc/team_data_folder/team_web.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTeamDataWeb extends StatefulWidget {
  const MyTeamDataWeb ({super.key});

  @override
  State<MyTeamDataWeb > createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamDataWeb > {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: MYTEAMWEB.length,
        itemBuilder: (context, index) {
          MyGdscTeamWeb myGdscTeamWeb = MYTEAMWEB[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(myGdscTeamWeb.name),
              subtitle: Text(myGdscTeamWeb.position),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: myGdscTeamWeb.imageurl,
                    width: 50.0,
                  )),
            ),
          );
        });

  }
}
