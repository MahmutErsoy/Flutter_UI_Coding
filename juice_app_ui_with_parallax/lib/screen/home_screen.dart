import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widget/parallex_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff171926),
        Color(0xff192535),
        Color(0xff243c52),
      ])),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 130,
            leading: const Icon(
              Icons.menu,
              size: 50,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        right: -100,
                        child: SizedBox(
                          height: 300,
                          child: Image.asset("assets/drinks.png"),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 0,
                        child: Column(
                          children: [
                            Text(
                              "the\n Juice",
                              style: GoogleFonts.rockSalt(
                                fontSize: 40,
                                color: const Color(0xffcbced6),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  width: 230,
                  height: 120,
                  child: Text(
                    "We Provide a Variety of fresh juices with various flavors.get fresh juice easily",
                    style: GoogleFonts.ptSerif(
                      color: const Color(0xff9598a6),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Variation :",
                        style: GoogleFonts.roboto(
                          color: const Color(0xff9598a6),
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ParallexWidget()
              ],
            ),
          ])),
    );
  }
}
