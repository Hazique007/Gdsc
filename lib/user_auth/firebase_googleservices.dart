

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Firebaseservices{
  final _googlesignin =GoogleSignIn();
  final _auths=FirebaseAuth.instance;
  signInwithGoogle() async{

    try{
      GoogleSignInAccount? googleSignInAccount =await _googlesignin .signIn();
      if(googleSignInAccount !=null){
        final GoogleSignInAuthentication googleSignInAuthentication=
        await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
        await _auths.signInWithCredential(authCredential);

      }


    } on FirebaseAuthException catch(e){
      print(e.message);
      throw e;

    }

  }



}