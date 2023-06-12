import 'package:calculator/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  var text = "";
  var answer = 0.0;

  eval() {
    Parser p = Parser();
    var newText = text.replaceAll("x", "*");
    Expression exp = p.parse(newText);
    ContextModel cont = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cont);
    answer = eval;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: const ColorScheme.dark()),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        answer.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Buttons(
                              text: "AC",
                              press: () {
                                text = "";
                                answer = 0;
                                setState(() {});
                              }),
                          Buttons(
                              text: "(",
                              press: () {
                                text += "(";
                                setState(() {});
                              }),
                          Buttons(
                              text: ")",
                              press: () {
                                text += ")";
                                setState(() {});
                              }),
                          Buttons(
                              text: "/",
                              col: Colors.orange,
                              press: () {
                                text += "/";
                                setState(() {});
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Buttons(
                              text: "7",
                              press: () {
                                text += "7";
                                setState(() {});
                              }),
                          Buttons(
                              text: "8",
                              press: () {
                                text += "8";
                                setState(() {});
                              }),
                          Buttons(
                              text: "9",
                              press: () {
                                text += "9";
                                setState(() {});
                              }),
                          Buttons(
                              text: "x",
                              col: Colors.orange,
                              press: () {
                                text += "x";
                                setState(() {});
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Buttons(
                              text: "4",
                              press: () {
                                text += "4";
                                setState(() {});
                              }),
                          Buttons(
                              text: "5",
                              press: () {
                                text += "5";
                                setState(() {});
                              }),
                          Buttons(
                              text: "6",
                              press: () {
                                text += "6";
                                setState(() {});
                              }),
                          Buttons(
                              text: "-",
                              col: Colors.orange,
                              press: () {
                                text += "-";
                                setState(() {});
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Buttons(
                              text: "1",
                              press: () {
                                text += "1";
                                setState(() {});
                              }),
                          Buttons(
                              text: "2",
                              press: () {
                                text += "2";
                                setState(() {});
                              }),
                          Buttons(
                              text: "3",
                              press: () {
                                text += "3";
                                setState(() {});
                              }),
                          Buttons(
                              text: "+",
                              col: Colors.orange,
                              press: () {
                                text += "+";
                                setState(() {});
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Buttons(
                              text: "0",
                              press: () {
                                text += "0";
                                setState(() {});
                              }),
                          Buttons(
                              text: ".",
                              press: () {
                                text += ".";
                                setState(() {});
                              }),
                          Buttons(
                              text: "Del",
                              press: () {
                                text = text.substring(0, text.length - 1);
                                setState(() {});
                              }),
                          Buttons(
                              text: "=",
                              col: Colors.orange,
                              press: () {
                                eval();
                                setState(() {});
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
