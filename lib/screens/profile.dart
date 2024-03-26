// import 'dart:html';

import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gdsc/resources/add_data.dart';
import 'package:gdsc/utils/colors.dart';
import 'package:gdsc/utils/pick_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Nameeditingcontroller =TextEditingController();
  final Brancheditingcontroller =TextEditingController();



  Uint8List? _image;

  void selectImage () async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image=img;
    });

  }

  void saveProfile() async {
    String name= Nameeditingcontroller.text;
    String bio= Brancheditingcontroller.text;
    String resp = await StoreData().saveData(name: name, bio: bio, file: _image!);

  }
  @override
  Widget build(context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                _image != null ?
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    ):
                CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDf0SdBHOmdAaBH1I1ioXL2xlOpmNLeWfCDg&usqp=CAU'),
                ),
                Positioned(
                    child: IconButton(
                        onPressed: selectImage, icon: Icon(Icons.add_a_photo)

                    ),
                  bottom: -10,
                  left: 80,

                )
              ],
            ),

          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              controller: Nameeditingcontroller,
              decoration: InputDecoration(
                hintText: 'Enter name',contentPadding: EdgeInsets.all(15.0),
                hintStyle: GoogleFonts.montserrat(fontSize: 12.0,fontWeight: FontWeight.w700,color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
            child: TextFormField(
              controller: Brancheditingcontroller,
              decoration: InputDecoration(
                hintText: 'Enter bio',contentPadding: EdgeInsets.all(15.0),
                hintStyle: GoogleFonts.montserrat(fontSize: 12.0,fontWeight: FontWeight.w700,color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          InkWell(
            onTap: ()=>saveProfile,
            child: Container(
              child: Center(child: Text('Save Profile',style: GoogleFonts.montserrat(fontSize: 10.0,color: MyColors.Background),)),
              height: 40,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: MyColors.Primary
              ),
            ),
          )


        ],

    );
  }
}
