import 'dart:ffi';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData {
  Future<String> uploadImagetoStorage(String childname, Uint8List file) async {
    Reference ref = _storage.ref().child(childname);
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadurl = await snapshot.ref.getDownloadURL();
    return downloadurl;
  }

  Future<String> saveData(
      {required String name,
      required String bio,
      required Uint8List file}) async{
    String resp ='Some error occured';
    try{
      if(name.isNotEmpty|| bio.isNotEmpty) {
        String imageurl = await uploadImagetoStorage('profileImage', file);
        await _firestore.collection('userProfile').add({
          'name': name,
          'bio': bio,
          'imageLink': imageurl,


        });
        resp = 'success';
      }
      
    }
        catch(err){
         resp =err.toString();
        }
        return resp;
  }
}
