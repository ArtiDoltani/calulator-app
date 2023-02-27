import 'package:calculator_app/components/Mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var userinput='';
  var result='';
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
      appBar: AppBar(leading: Icon(Icons.calculate_rounded),
      backgroundColor:const Color(0xffffa00a),
        title:const  Text('Calculator App'),),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
              //Expanded widget 1
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:20),
                child: Column(
                  children: [
                  Text(userinput.toString(),style: TextStyle(fontSize: 20,color: Colors.white,)),
                  Text(result.toString(),style: TextStyle(fontSize: 20,color: Colors.white,))
                ],),
              ),
            ),
            //Expanded widget 2
            Expanded(
              flex: 3,
              child: Column(
                children: [
             // row 1
                      Row(
              children: [
            MyButton(titile: "AC",onpress:(){
              userinput ='';
              result='';
              setState(() {
                
              });
            },),
              MyButton(titile:'+/-',onpress:(){
                 userinput+='+/-';
                  setState(() {
                    
                  });
              }),
              MyButton(titile: '%',onpress:(){
                userinput+='%';
                  setState(() {
                    
                  });
              }),
                MyButton(titile: '/',containercolor:const Color(0xffffa00a),
                onpress:(){
                  userinput+='/';
                  setState(() {
                    
                  });
                }),
                  ],),
                      // row 2
                      Row(
              children: [
                MyButton(titile: "7",onpress:(){
                  userinput+='7';
                  setState(() {
                    
                  });
                },),
                 MyButton(titile:'8',onpress:(){
                  userinput+='8';
                  setState(() {
                    
                  });
                 }),
                  MyButton(titile: '9',onpress:(){
                    userinput+='9';
                  setState(() {
                    
                  });
                  }),
                   MyButton(titile: 'x',containercolor:const Color(0xffffa00a),
                   onpress:(){
                    userinput+='x';
                  setState(() {
                    
                  });
                   }),
                      ],),
                      
             // row 3
                      Row(
              children:[
                MyButton(titile: "4",onpress:(){
                  userinput+='4';
                  setState(() {
                    
                  });
                }),
                 MyButton(titile:'5',onpress:(){
                  userinput+='5';
                  setState(() {
                    
                  });
                 }),
                  MyButton(titile: '6',onpress:(){
                    userinput+='6';
                  setState(() {
                    
                  });
                  }),
                   MyButton(titile: '+',containercolor:const Color(0xffffa00a),
                   onpress: (){
                    userinput+='+';
                  setState(() {
                    
                  });
                   },),
                      ],),
                      // row 4
                      Row(
              children:[
          MyButton(titile: "3",onpress:(){
            userinput+='3';
                  setState(() {
                    
                  });
          }),
            MyButton(titile:'2',onpress:(){
              userinput+='2';
                  setState(() {
                    
                  });
            }),
            MyButton(titile: '1',onpress:(){
              userinput+='1';
                  setState(() {
                    
                  });
            }),
              MyButton(titile: '-',containercolor:const Color(0xffffa00a),
              onpress: (){
                userinput+='-';
                  setState(() {
                    
                  });
              },),
                ],),
                      //row 5
                      Row(
              children:[
                MyButton(titile: "0",onpress:(){
                  userinput+='0';
                  setState(() {
                    
                  });
                }),
                 MyButton(titile:'.',onpress:(){
                  userinput+='.';
                  setState(() {
                    
                  });
                 }),
                  MyButton(titile: 'DEL',onpress:(){
                  userinput=userinput.substring(0,userinput.length-1);
                  setState(() {
                    
                  });
                  }),
                   MyButton(titile: '=',containercolor:const Color(0xffffa00a),
                   onpress: (){
                     equalpress();
                   },),
                      ],),
            
                ],
              ),
            )
           
        ]),
      ),
     ),
   );
    
  }
                //creating a function for calculations
  void equalpress(){
   // String finaluserinput=userinput.
    Parser p= Parser();
    Expression expression= p.parse(userinput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();
   
  }
}