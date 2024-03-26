import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  const MyButton({required this.loading,required this.title,required this.onTap,super.key});
  final String title;
  final VoidCallback onTap;
  final bool loading;
  
  
  
  @override
  Widget build (context){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff232323),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,):Text(title,style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
