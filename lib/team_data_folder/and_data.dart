import 'package:flutter/material.dart';
import 'package:gdsc/team_data_folder/consts.dart';
import 'package:gdsc/team_data_folder/team_aii.dart';
import 'package:gdsc/team_data_folder/team_android.dart';
import 'package:gdsc/team_data_folder/team_mentor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTeamDataAnd extends StatefulWidget {
  const MyTeamDataAnd({super.key});

  @override
  State<MyTeamDataAnd> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamDataAnd> {
  @override
  Widget build(BuildContext context) {
    final LinkedinHazique = Uri.parse('https://www.linkedin.com/in/hazique-khan-4038a41aa/');

    return ListView.builder(
        itemCount: MYTEAMAND.length,
        itemBuilder: (context, index) {
          MyGdscTeamAnd myGdscTeamAnd= MYTEAMAND[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(myGdscTeamAnd.name),
              subtitle: Text(myGdscTeamAnd.position),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: myGdscTeamAnd.imageurl,
                    width: 50.0,
                  )),
              trailing:IconButton(onPressed: (){
                setState(() {
                  launchUrl(
                    LinkedinHazique,mode: LaunchMode.externalApplication
                  );
                });
                

                }, icon: Icon(Ionicons.add))
            ),
          );
        });

  }
}
