import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final String title;
  final color ;
  final VoidCallback onPress;
  const Mybutton({Key? key ,required this.onPress,required this.title, this.color= Colors.blueGrey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child:  InkWell(
       onTap: onPress,


       child:   Container(
         margin: EdgeInsets.symmetric(vertical: 5),
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  color: color,
              ),
              child: Center(
                child: Text(title,style: TextStyle(fontSize: 20, color: Colors.white54),),
              ),
            ),

      ),

    );
  }
}