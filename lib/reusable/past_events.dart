import 'package:flutter/material.dart';
import 'package:gdsc/utils/past_dettails.dart';
import 'package:url_launcher/url_launcher.dart';

class PastEvents extends StatefulWidget {
  const PastEvents({super.key});

  @override
  State<PastEvents> createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount:  PASTDETAILS.length,

    itemBuilder: (context, index){
      final WebsiteUri = Uri.parse('https://gdsc.community.dev/zakir-husain-college-of-engineering-and-technology-aligarh/');
      PastDetails pastDetails = PASTDETAILS[index];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ()=> setState(() {
            launchUrl(
              WebsiteUri,mode: LaunchMode.externalApplication
            );
          }),
          child: ListTile(
            leading: CircleAvatar(
              child: Image(image: pastDetails.imgurl),

            ),
            title:Text(pastDetails.name) ,
            subtitle: Text(pastDetails.details),

          ),
        ),
      );


    });
  }
}
