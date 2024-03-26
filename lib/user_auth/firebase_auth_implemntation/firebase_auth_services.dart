//
// import 'dart:html';
//
// import 'package:firebase_auth/firebase_auth.dart';
//
// class FirebaseAuthService {
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   Future<User?> signUpwithEmailandPassword(String email,String password) async{
//
//     try{
//       UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//
//     } catch(e){
//       print("Some Error Occured");
//     }
//   }
//
//   Future<User?> signInwithEmailandPassword(String email,String password) async{
//
//     try{
//       UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//
//     } catch(e){
//       print("Some Error Occured");
//     }
//   }
//
//
// }