// ignore: file_names
import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String titile;
  final Color containercolor;
  final VoidCallback onpress;
  const MyButton({Key? key,
   required this.titile,
   this.containercolor=const Color(0xffa5a5a5),
   required this.onpress
   }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height:80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
           color: containercolor
            ),
         child:  Center(
              child: Text(titile,style:const TextStyle(fontSize: 20,color: Colors.white),
              ),
            )
            
           
          ),
        ),
      ),
    );
    
  }
}