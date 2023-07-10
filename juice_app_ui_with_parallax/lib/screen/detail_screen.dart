import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  String bgimage;
  DetailScreen(this.bgimage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgimage),
          fit: BoxFit.cover,
        ),
      ),
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    height: 250,
                    child: Image.asset(
                      "assets/cup.png",
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Berry Juice",
                style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "Blend of berry with ice that\n makes your tired day feels very\n fresh again",
                style: GoogleFonts.nunito(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "\$ 3.5",
                style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3), borderRadius: BorderRadius.circular(5)),
                alignment: Alignment.center,
                child: Text(
                  "Get Your Extra",
                  style: GoogleFonts.nunito(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
