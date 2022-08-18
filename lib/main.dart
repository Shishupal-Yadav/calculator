
import 'package:calculator/buttons/calculatorbutton.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
   late int firstnum;
   late int secondnum;
   String history='';
   String textToDisplay='';
   late String res;
   late String operation;
  void buttonOnClick(String buttonVal){
    if(buttonVal=='C'){
      textToDisplay='';
      firstnum=0;
      secondnum=0;
      res='';
    }
    else if(buttonVal=='AC'){
      textToDisplay='';
      firstnum=0;
      secondnum=0;
      res='';
      history='';
    }
    else if(buttonVal=='<'){
      if(textToDisplay.length > 0)textToDisplay=textToDisplay.substring(0,textToDisplay.length-1);

    }
    else if(buttonVal=='+' ||
        buttonVal=='-' ||
        buttonVal=='X' ||
        buttonVal=='/'){
      firstnum=int.parse(textToDisplay);
      res='';
      textToDisplay="";
      operation=buttonVal;
    }
    else if(buttonVal=='='){
      secondnum=int.parse(textToDisplay);
      if(operation=='+'){
        res=(firstnum + secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='-'){
        res=(firstnum - secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='X'){
        res=(firstnum * secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='/'){
        res=(firstnum / secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else{
        res=int.parse(textToDisplay).toString();
      }
      textToDisplay=res;
    }
    else{
        textToDisplay+=buttonVal;
    }
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
       home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        

        ),
        backgroundColor: Color.fromARGB(255, 5, 32, 55),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(padding: EdgeInsets.only(right: 12),
                child: Text(history,style: TextStyle(fontSize: 24,color: Colors.white24),)),
                alignment: Alignment(1.0, 1.0),

              ),
              Container(child:
              Padding(padding:
              EdgeInsets.all(12),
              child: Text(textToDisplay,style: TextStyle(fontSize: 48,color: Colors.white),)),
                alignment: Alignment(1.0, 1.0),

       ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: 'AC',
                  fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textSize: 18,
                    callback: buttonOnClick,
                    ),
                  CalculatorButton(text: 'C',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,

                    ),
                   CalculatorButton(text: '<',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '/',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                  
                  
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '9',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                  CalculatorButton(text: '8',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '7',
                  fillcolor: 0xFF8ad4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                   CalculatorButton(text: 'X',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                  
                  
                ],
              ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '6',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                  CalculatorButton(text: '5',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '4',
                  fillcolor: 0xFF8ad4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '-',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                  
                  
                ],
              ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '3',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                  CalculatorButton(text: '2',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '1',
                  fillcolor: 0xFF8ad4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '+',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                  
                  
                ],
              ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '.',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                  CalculatorButton(text: '0',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                    callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '00',
                  fillcolor: 0xFF8ad4d0,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                   CalculatorButton(text: '=',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textSize: 20,
                     callback: buttonOnClick,
                    ),
                  
                  
                ],
              ),
              
            ],
          )
          
        ),
       ),  );
  


  }
}
