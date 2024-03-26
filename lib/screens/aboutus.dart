import 'package:flutter/material.dart';
import 'package:gdsc/reusable/connect_widget.dart';
import 'package:gdsc/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.background,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.secondary),
        title: Text(
          'About Us',
          style: GoogleFonts.montserrat(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.secondary),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Welcome to Google Developer Student Clubs, ZHCET. Google Developer Student Clubs\n'
                'are university-based community groups for students interested in Google developer technologies.'
                'By joining a GDSC, students get access to Google Developer resources, build their personal and professional network,\n'
                'and work together to build solutions for local problems in a peer-to-peer learning environment.',
                style: GoogleFonts.montserrat(fontSize: 12.0),
              ),SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(right: 210.0),
                child: Text('What we do?',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.w700),),
                
              ),
              SizedBox(height: 20.0,),

              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text('\u2022 Hands-on Workshops\n'
                    '\u2022 Collaborative Events with Fellow GDSCs\n'
                    '\u2022 Talks: Get updated with the latest\n technologies by the industry experts\n'
                    '\u2022 Codelabs: Get hands-on experience and guidance from the community members\n'
                    '\u2022 Build Projects & Compete in the GDSC Solution Challenge\n'
                    '\u2022 Campus Roadshows: Share knowledge in different Companies, colleges, and universities\n'
                    '\u2022 Share knowledge in different colleges and universities through Google Cloud/Android Study Jams\n'
                    '\u2022 GDG / GDE expert talks'),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Text('How to join?',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 20.0,),
              
              Padding(
                padding: const EdgeInsets.only(right: 130.0),
                child: Text('\u2022 Create a Profile\n'
                    '\u2022 Join the Chapter\n'
                    '\u2022 Get a Confirmation Email\n'
                    '\u2022 Attend Events'),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text('Connect',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Connect(text: 'Linkedin', context: context, link: 'https://www.linkedin.com/company/gdsc-zhcet/'),
                    Connect(text: 'Instagram', context: context, link: 'https://www.instagram.com/gdsc_zhcet/'),
                    Connect(text: 'Twitter', context: context, link: 'https://twitter.com/GZhcet')
                  ],
                ),
              ),
              SizedBox(height: 20.0,)




              

            ],
          ),
        ),
      ),
    );
  }
}
