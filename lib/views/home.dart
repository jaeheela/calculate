import 'dart:ffi';

import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String temp = '';
  String result = '';


  @override
  void setState(VoidCallback fn) {
    if(mounted){ super.setState(fn); }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(alignment: Alignment.center),
            Container(
              child: Text(
                temp,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 50.0),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 380,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  width: 380,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(number: "1"),
                          customContainer(number: "2"),
                          customContainer(number: "3"),
                          customContainer(number: "/", color: Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(number: "4"),
                          customContainer(number: "5"),
                          customContainer(number: "6"),
                          customContainer(number: "x", color: Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(number: "7"),
                          customContainer(number: "8"),
                          customContainer(number: "9"),
                          customContainer(number: "-", color: Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(number: "0"),
                          customContainer(number: "00"),
                          customContainer(number: "."),
                          customContainer(number: "+", color: Colors.deepOrangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(number: "AC", color: Colors.amberAccent),
                          customContainer(number: "+/-", color: Colors.amberAccent),
                          customContainer(number: "♥", color: Colors.amberAccent),
                          customContainer(number: "=", color: Colors.deepOrangeAccent),
                        ],
                      ),
                    ],
                  ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
    );
  }

  Widget customContainer({required String number, double? height=70, double? width=70, Color? color=Colors.black12}) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
          child: Text(
            number,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        onPressed: () {
          setState (() {
            temp += number;
          });
          if(number=='='){
            calculate();
            print(result);
            temp = result;
          } else if(number=='AC'){
            initCalculate();
          }
        },
      ),
    );
  }

  /** 계산 초기화 **/
  void initCalculate(){
    temp = '';
    result = '';
    setState(() { });
  }

  void initTemp(){
    temp = '';
    setState(() { });
  }

  /** 계산 **/
  void calculate() {
    try {
      //String expression = temp;

      // 등호 입력 시 계산
      if (temp.contains('=')) {
        temp = temp.replaceAll('=', '');

        // 연산자 우선순위에 따라 계산
        List<String> operators = ["+", "-", "x", "%"];
        for (String operator in operators) {
          List<String> parts = temp.split(operator);
          if (parts.length == 2) {
            double operand1 = double.parse(parts[0]);
            double operand2 = double.parse(parts[1]);
            double evalResult = performOperation(operand1, operand2, operator);
            result = evalResult.toString();
            setState(() {});
            initTemp();
            return;
          }
        }

        // 등호가 입력되었지만 올바른 형식의 수식이 아닐 때
        result = '올바른 수식이 아닙니다';
        setState(() {});
      } else {
        // 등호가 입력되지 않았을 때는 계속 수식을 누적
        result = temp;
      }
    } catch (e) {
      print('에러: $e');
      result = '계산 에러';
      setState(() {});
    }
  }

  /** 연산자, 숫자1, 숫자2 입력받아 계산 **/
  double performOperation(double operand1, double operand2, String operator) {
    switch (operator) {
      case '+':
        return operand1 + operand2;
      case '-':
        return operand1 - operand2;
      case 'x':
        return operand1 * operand2;
      case '%':
        return operand1 % operand2;
      default:
        throw Exception('올바르지 않은 연산자입니다');
    }
  }

  void printTT(number){
    switch(number){
      case "/":
        print("/");
        break;
      case "x":
        print("x");
        break;
      case "-":
        print("-");
        break;
      case "+":
        print("+");
        break;
      case ".":
        print(".");
        break;
      case "AC":
        print("AC");
        break;
      case "+/-":
        print("+/-");
        break;
      case "♥":
        print("♥");
        break;
      case "=":
        print("=");
        break;
      default:
        print(double.parse(number));
    }
  }
}