import 'package:flutter/cupertino.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculaterScreen extends StatefulWidget {
  const CalculaterScreen({super.key});

  @override
  State<CalculaterScreen> createState() => _CalculaterScreenState();
}

class _CalculaterScreenState extends State<CalculaterScreen> {
  bool isDark = true;
  String value = "";

  var input = "";
  var output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? const Color(0xff374353) : const Color(0xfffafbff),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CupertinoSwitch(
                          activeColor: Colors.white,
                          thumbColor: isDark ? Colors.blue : const Color(0xff374353),
                          value: isDark,
                          onChanged: (value) {
                            setState(() {
                              isDark = !isDark;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Text(input,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white : const Color(0xff6bbbf9)),
                      maxLines: 1),
                  const SizedBox(height: 10),
                  Text(
                    output,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: isDark ? const Color(0xffbfcfd7) : Color(0xff0ffbfcfd7)),
                    maxLines: 1,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Btn("AC"),
                      Btn("<"),
                      Btn("%"),
                      Btn("/"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Btn("7"),
                      Btn("8"),
                      Btn("9"),
                      Btn("x"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Btn("4"),
                      Btn("5"),
                      Btn("6"),
                      Btn("-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Btn("1"),
                      Btn("2"),
                      Btn("3"),
                      Btn("+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Btn("+/-"),
                      Btn("0"),
                      Btn("."),
                      Btn("="),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Btn(String text) {
    double blur = value == text ? 1.0 : 5;
    Offset distance = value == text ? const Offset(3, 3) : const Offset(4, 4);

    return Listener(
      onPointerUp: (_) {
        if (text == text) {
          setState(() {
            value = "";
          });
        }
      },
      onPointerDown: (_) {
        if (text == text) {
          setState(() {
            value = text;
          });
          calculateFunction(value);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: isDark ? const Color(0xff374353) : const Color(0xfffafbff),
            boxShadow: [
              BoxShadow(
                color: isDark ? const Color(0xff2f3b47) : const Color(0xffe3effc),
                offset: distance,
                blurRadius: blur,
                inset: value == text,
              ),
              BoxShadow(
                color: isDark ? const Color(0xffb4bcb4).withOpacity(0.2) : const Color(0xffffffff),
                offset: -distance,
                blurRadius: blur,
                inset: value == text,
              ),
            ]),
        child: Text(text,
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: isDark ? Colors.white : Color(0xff0185f2))),
      ),
    );
  }

  calculateFunction(value) {
    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userInput = input;

        userInput = input.replaceAll("x", "*");

        Parser p = Parser();

        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();

        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith(".0")) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
      }
    } else {
      input = input + value;
    }
    setState(() {});
  }
}
