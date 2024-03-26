import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';

import '../reusable/google_auth_btn.dart';
import '../utils/colors.dart';
import '../utils/mybutton.dart';
import '../utils/utils.dart';
import 'login.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;
  bool _isvsible = true;
  final _formkey = GlobalKey<FormState>();

  void signup() {
    setState(() {
      loading = true;
    });
    _auth
        .createUserWithEmailAndPassword(
        email: _emailcontroller.text.toString(),
        password: _passwordcontroller.text.toString())
        .then((value) {
      setState(() {
        loading = false;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading = false;

      });

    });
  }

  // gotoHome(BuildContext context) {
  //   if (_formkey.currentState!.validate()) {
  //     // setState(() {
  //     //   loading = true;
  //     // });
  //
  //     _auth
  //         .createUserWithEmailAndPassword(
  //         email: emailcontroller.text.toString(),
  //         password: passwordcontroller.text.toString())
  //         .then((value) {
  //       setState(() {
  //         loading = false;
  //       });
  //     });
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    width: 300,
                    height: 100,
                    image: AssetImage(
                      'Assets/lo.png',
                    )),
                Container(
                  padding: EdgeInsets.only(right: 100.0, top: 20.0),
                  child: Text(
                    'Hello! register to\nget started',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 22,color: MyColors.Font),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            child: TextFormField(
                              style: TextStyle(color: MyColors.Font),
                              controller: _emailcontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.person,color: MyColors.Font,),

                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.grey),

                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: MyColors.Font),
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  focusedBorder:


                                  OutlineInputBorder(
                                      borderSide: BorderSide(

                                          color: MyColors.Font
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(10.0))

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            child: TextFormField(
                              style: TextStyle(color: MyColors.Font),
                              controller: _passwordcontroller,
                              obscureText: _isvsible,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Password';
                                } else if (value.length < 6) {
                                  return 'Password must be greater than 6 letters';
                                }
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.lock_closed,color: MyColors.Font,),

                                  suffixIcon: IconButton(
                                    icon: Icon(_isvsible
                                        ? Icons.visibility_off
                                        : Icons.visibility),color: MyColors.Font,
                                    onPressed: () => setState(() {
                                      _isvsible = !_isvsible;
                                    }),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: MyColors.Font),
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  focusedBorder:


                                  OutlineInputBorder(
                                      borderSide: BorderSide(

                                          color: MyColors.Font
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(10.0))

                              ),
                            ),
                          ),



                          SizedBox(
                            height: 30.0,
                          ),
                          // InkWell(
                          //   onTap: () => gotoHome(context),
                          //   child: Container(
                          //     height: 50,
                          //     width: 150,
                          //     decoration: BoxDecoration(
                          //         color: MyColors.Primary,
                          //         borderRadius: BorderRadius.circular(10.0)),
                          //     child: Center(
                          //         child: loading
                          //             ? CircularProgressIndicator()
                          //             : Text(
                          //           'Sign Up',
                          //           style: GoogleFonts.poppins(
                          //               fontSize: 18, color: Colors.white),
                          //         )),
                          //   ),
                          // ),
                          MyButton(
                            title: 'Sign Up',
                            loading: loading,
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                signup();
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                              }
                            },
                          ),

                          SizedBox(
                            height: 10.0,
                          ),
                          GoogleAuthButton('Sign Up using Google'),
                          SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: GoogleFonts.montserrat(fontSize: 12,color: MyColors.Font),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  ' Log in',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: MyColors.Primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
