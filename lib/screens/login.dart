import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc/screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';

import '../reusable/forgot_pass.dart';
import '../reusable/google_auth_btn.dart';
import '../utils/colors.dart';
import '../utils/mybutton.dart';
import '../utils/utils.dart';
import 'navvv.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isvsible = true;
  bool loading = false;
  final _formkey = GlobalKey<FormState>();

  void login() {
    if (_formkey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      _auth
          .signInWithEmailAndPassword(
          email: _emailcontroller.text.toString(),
          password: _passwordcontroller.text.toString())
          .then((value) {
        Utils().toastMessage(value.user!.email.toString());
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => NavvBaar()));
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
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
                    padding: EdgeInsets.only(right: 40.0, top: 20.0),
                    child: Text(
                      'Welcome Back!\nGlad to see you again',
                      style: GoogleFonts.poppins(
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
                                    return 'Please Enter Username';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(



                                    prefixIcon: Icon(Ionicons.person,color: MyColors.Font,),

                                    labelText: 'Email',
                                    labelStyle:  TextStyle(color: Colors.grey),
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
                                        BorderRadius.circular(10.0)),
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
                                  labelStyle: TextStyle(color: Colors.grey)
                                    ),
                              ),
                            ),

                            Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPassword()));
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: GoogleFonts.montserrat(
                                          color: MyColors.Font,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w700),
                                    ))),

                            SizedBox(
                              height: 20.0,
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
                            //         child: Text(
                            //           'Login',
                            //           style: GoogleFonts.poppins(
                            //               fontSize: 18, color: Colors.white),
                            //         )),
                            //   ),
                            // ),
                            MyButton(
                                loading: loading,
                                title: 'Login',
                                onTap: () => login()),
                            SizedBox(
                              height: 10.0,
                            ),

                            GoogleAuthButton('Login using Google'),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New to GDSC?',
                                  style: GoogleFonts.montserrat(fontSize: 12,color: MyColors.Font),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: Text(
                                    ' Sign up',
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
      ),
    );
  }
}
