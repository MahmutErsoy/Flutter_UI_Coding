import 'package:flower_app_ui/utils/star_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    bool isLightMode = MediaQuery.of(context).platformBrightness == const Color(0xff4e4466);

    return Scaffold(
      backgroundColor: isLightMode ? const Color(0xfff3f3f3) : const Color(0xff4e4466),
      appBar: AppBar(
        elevation: 0,
        foregroundColor: isLightMode ? Colors.black : Colors.white,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  isLightMode ? const Color(0xffe34172) : Colors.white,
                  isLightMode ? const Color(0xffffc074) : Colors.white
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 45,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  color: isLightMode ? Colors.white : const Color(0xff4e4466),
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: Text(
                  'New Flower',
                  style: TextStyle(color: isLightMode ? const Color(0xffe34172) : Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        actions: const [Icon(Icons.shopping_bag_outlined), SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: RichText(
                  text: TextSpan(
                      text: "Bousqet of",
                      style: TextStyle(color: isLightMode ? Colors.black : Colors.white, fontSize: 30),
                      children: const <TextSpan>[
                    TextSpan(text: " pink\n", style: TextStyle(color: Color(0xfff562a1))),
                    TextSpan(
                      text: "tulips special",
                    )
                  ])),
            ),
            const Spacer(),
            Center(
                child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow:
                      isLightMode ? [] : const [BoxShadow(color: Color(0xff6b6185), blurRadius: 80, spreadRadius: 40)]),
              height: 350,
              child: Stack(
                children: [
                  Opacity(opacity: 0.5, child: Image.asset("assets/flower.png", color: Colors.black)),
                  ClipRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), child: Image.asset("assets/flower.png")))
                ],
              ),
            )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.share_outlined, color: isLightMode ? Colors.grey : Colors.white),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++) ...[
                      ClipPath(
                        clipper: StarClipper(),
                        child: Container(
                          color: i == 4
                              ? isLightMode
                                  ? const Color(0xffdbdbdb)
                                  : Colors.black54
                              : const Color(0xfff2cf25),
                          width: 20,
                          height: 20,
                        ),
                      )
                    ]
                  ],
                ),
                CircleAvatar(backgroundColor: isLightMode ? Colors.black : Colors.white, radius: 4),
                Text("275 review",
                    style: TextStyle(
                      color: isLightMode ? Colors.grey : Colors.white,
                      fontSize: 23,
                    )),
                Icon(
                  Icons.favorite_border,
                  color: isLightMode ? Colors.grey.shade600 : Colors.white,
                  size: 25,
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          text: "\$",
                          style: TextStyle(color: isLightMode ? Colors.black : Colors.white, fontSize: 15),
                          children: const <TextSpan>[
                        TextSpan(text: "52", style: TextStyle(fontSize: 56)),
                        TextSpan(text: ".99", style: TextStyle(fontSize: 25))
                      ])),
                ),
                Expanded(
                    child: Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: isLightMode ? Colors.transparent : Colors.white),
                      color: isLightMode ? Colors.white : const Color(0xff4e4466),
                      boxShadow: [
                        BoxShadow(
                            color: isLightMode ? Colors.grey.shade300 : const Color(0xff4e4466),
                            offset: const Offset(5, 5),
                            blurRadius: 20)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.spa_outlined, color: isLightMode ? const Color(0xffe34172) : Colors.white),
                      Text("12 Unid Tulip",
                          style: TextStyle(fontSize: 19, color: isLightMode ? Colors.black : Colors.white)),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: isLightMode ? Colors.transparent : Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: Colors.grey)),
                        alignment: Alignment.center,
                        child: const Icon(Icons.expand_more, size: 16),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            const Spacer(),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xffe34172), Color(0xffffc074)]),
                  borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              child: const Text("ADD TO CART",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
