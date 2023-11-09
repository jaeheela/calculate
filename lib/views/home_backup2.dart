import 'package:closet/widgets/home_icon_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(alignment: Alignment.center),
            Container(
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
        onPressed: (){
            print("ddfsjdfkjsdbjf");
        },
      ),
    );
  }
}