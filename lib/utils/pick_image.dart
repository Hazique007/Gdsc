import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


pickImage(ImageSource source) async {
  final ImagePicker picker = ImagePicker();
  final XFile? _file = await picker.pickImage(source: ImageSource.gallery);

  if(_file != null){

    return await _file.readAsBytes();
  }
  print('No image selected');

}