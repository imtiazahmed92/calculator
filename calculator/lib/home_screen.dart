import 'package:calculator/components/my_button.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                    ),
                    Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                    SizedBox(height: 15),
                    Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(tittle: 'AC',onPress: (){
                        userInput= '';
                        answer  = '';
                        setState(() {

                        });
                      },),
                      MyButton(tittle: '+/-',onPress: (){
                        userInput += '+/-';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '%',onPress: (){
                        userInput += '%';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '/',onPress: (){
                        userInput += '/';
                        setState(() {

                        });
                      },color: Color(0xffffa00a),),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(tittle: '7',onPress: (){
                        userInput += '7';
                        setState(() {

                        });
                      },),
                      MyButton(tittle: '8',onPress: (){
                        userInput += '8';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '9',onPress: (){
                        userInput += '9';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: 'x',onPress: (){
                        userInput += 'x';
                        setState(() {

                        });
                      },color: Color(0xffffa00a),),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(tittle: '4',onPress: (){
                        userInput += '4';
                        setState(() {

                        });
                      },),
                      MyButton(tittle: '5',onPress: (){
                        userInput += '5';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '6',onPress: (){
                        userInput += '6';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '-',onPress: (){
                        userInput += '-';
                        setState(() {

                        });
                      },color: Color(0xffffa00a),),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(tittle: '1',onPress: (){
                        userInput += '1';
                        setState(() {

                        });
                      },),
                      MyButton(tittle: '2',onPress: (){
                        userInput += '2';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '3',onPress: (){
                        userInput += '3';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '+',onPress: (){
                        userInput += '+';
                        setState(() {

                        });
                      },color: Color(0xffffa00a),),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(tittle: '0',onPress: (){
                        userInput += '0';
                        setState(() {

                        });
                      },),
                      MyButton(tittle: '.',onPress: (){
                        userInput += '.';
                        setState(() {

                        });
                      }),
                      MyButton(tittle: 'DEL',onPress: (){
                        userInput = userInput.substring(0,userInput.length-1  );
                        setState(() {

                        });
                      }),
                      MyButton(tittle: '=',onPress: (){
                        equalPress();
                        setState(() {

                        });
                      },color: Color(0xffffa00a),),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }



  void equalPress(){
    String FinalUserInput = userInput;
    FinalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(FinalUserInput);
    ContextModel contextModel =ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}





