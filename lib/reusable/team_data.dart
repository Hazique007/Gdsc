import 'package:flutter/material.dart';
import 'package:gdsc/team_data_folder/consts.dart';
import 'package:gdsc/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTeamData extends StatefulWidget {
  const MyTeamData({super.key});

  @override
  State<MyTeamData> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeamData> {
  @override
  Widget build(BuildContext context) {
    final WebsiteLinkedinAbh = Uri.parse('https://www.linkedin.com/in/abhishek-singh2073/');

    return Container(
      child: ListView.builder(
          itemCount: MYTEAM.length,
          itemBuilder: (context, index) {
            MyGdscTeam myGdscTeam = MYTEAM[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: ()=> setState(() {
                  launchUrl(
                    WebsiteLinkedinAbh,mode: LaunchMode.externalApplication
                  );
                }),
                child: ListTile(
                  title: Text(myGdscTeam.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Text(myGdscTeam.position,style: TextStyle(color: MyColors.Font),),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: myGdscTeam.imageurl,
                        width: 50.0,
                      )),

                ),
              ),
            );
          }),
    );

  }
}
