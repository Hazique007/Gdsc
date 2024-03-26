import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class GdscCom extends StatefulWidget {
  GdscCom({super.key});

  @override
  State<GdscCom> createState() => _GdscComState();
}

class _GdscComState extends State<GdscCom> {
  final WebsiteUri=Uri.parse('https://forms.gle/FaEmvpo8uCVUUX9n7');

  // _launchURLApp() async {
  //   var url = Uri.parse("https://forms.gle/8LX2rJ7t3JctfYAY8/");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  @override
  Widget build(context) {
    return InkWell(
      onTap:()=> setState(() {
        launchUrl(
            WebsiteUri,mode: LaunchMode.externalApplication
        );
      }),

      child: Container(
        width: double.infinity,
        height: 80,
        margin: EdgeInsets.only(top: 20.0),

        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     offset: const Offset(
          //       5.0,
          //       5.0,
          //     ),
          //     blurRadius: 10.0,
          //     spreadRadius: 2.0,
          //   ), //BoxShadow
          //   BoxShadow(
          //     color: Colors.black26,
          //     offset: const Offset(0.0, 0.0),
          //     blurRadius: 4.0,
          //     spreadRadius: 4.0,
          //   ),





          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [

          Container(margin:EdgeInsets.only(left: 10),child: Image.asset('Assets/gdl.png',width: 70,)),
          SizedBox(width: 20,),
          Text('Join our GDSC community by\nclicking here',style: GoogleFonts.poppins(color: Theme.of(context).colorScheme.background,fontSize: 10,fontWeight: FontWeight.w600),),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,color: Theme.of(context).colorScheme.background,))


        ],),
      ),
    );
  }
}
