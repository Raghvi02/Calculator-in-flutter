import 'package:flutter/material.dart';
import 'package:untitled17/components.dart';

import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
var userInput = '';
var answer = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor:  Colors.orange,
      centerTitle: true,
      title: Text('Calculator',),
    ),


 body:Padding(
 padding: EdgeInsets.symmetric(horizontal: 10),




   child: Column(
children: [
  Expanded(child:
  Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
     child:
            Column(
    children:[
      SizedBox(height: 20,),
  Text(userInput.toString(),style: TextStyle(
   fontSize: 30,
   color: Colors.white,
 ),),
      Text(answer.toString(),style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),),

  ],
    ),
    ),
    ),

  Expanded(
flex: 2,
    child:  Column(

        children: [
          Row(
            children: [
              Mybutton( title: 'AC', onPress: (){
                userInput='';
                answer ='';
                setState(() {

                });
    }
      ,),
              Mybutton( title: '+/-',
                onPress: () {
               userInput +='+';
                },
              ),
              Mybutton( title: '%',onPress: (){
                userInput +='%';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '/', color: Colors.orange,onPress: (){
                userInput +='/';

                setState(() {

                });
              }
                ,),
            ],

          ),
          Row(
            children: [
              Mybutton( title: '7',onPress: (){
                userInput +='7';

                setState(() {

                });
              }
                ,),

              Mybutton( title: '8',onPress: (){
                userInput +='8';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '0',onPress: (){
                userInput +='0';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '*',color: Colors.orange,onPress: (){
                userInput +='*';

                setState(() {

                });
              }
                ,),
            ],
          ),
          Row(
            children: [
              Mybutton( title: '4',onPress: (){
                userInput +='4';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '5',onPress: (){
                userInput +='5';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '6',onPress: (){
                userInput +='6';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '-',color: Colors.orange,onPress: (){
                userInput +='-';

                setState(() {

                });
              }
                ,),
            ],

          ),

          Row(
            children: [
              Mybutton( title: '1',onPress: (){
                userInput +='1';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '2',onPress: (){
                userInput +='2';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '3',onPress: (){
                userInput +='3';

                setState(() {

                });
              }
                ,),
              Mybutton( title: '+',color: Colors.orange,onPress: (){
                userInput +='+';

                setState(() {

                });
              }
                ,),
            ],
          ),
          Row(
            children: [
              Mybutton( title: '0',onPress: (){
            userInput +='0';

            setState(() {

            });
          }
            ,),
              Mybutton( title: '.',onPress: (){
                userInput +='.';

                setState(() {

                });
              }
                ,),
              Mybutton( title: 'DEL',onPress: (){
              userInput = userInput.substring(0, userInput.length-1);
              setState(() {

              });
              },),
              Mybutton( title: '=',color: Colors.orange,
                onPress: (){

    Parser p = Parser();

    Expression exp = p.parse(userInput );
    ContextModel contextModel = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL,
    contextModel);
    answer =  eval.toString();



    setState(() {

    });
                  }),





],
          ),

        ],
      ),












  ),
],
 ),


    ),
    ),
    );
  }
}

