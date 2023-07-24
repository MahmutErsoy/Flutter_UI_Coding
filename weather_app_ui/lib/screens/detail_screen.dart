import 'package:flutter/material.dart';
import 'package:weather_app_ui/data/data.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_today),
            SizedBox(width: 10),
            Text("7 days"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Color(0xff45433d),
                          blurRadius: 100,
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: Image.asset("assets/rain.png"),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text("Tomorrow",
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal)),
                      RichText(
                        text: const TextSpan(
                          text: '20',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
                          children: <TextSpan>[
                            TextSpan(
                                text: '/17*',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.grey)),
                          ],
                        ),
                      ),
                      const Text("Rainy - Cloudy",
                          style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: const Color(0xff24252a), borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.air,
                        color: Colors.grey,
                      ),
                      Text("13 Km/h", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                      Text("Wind", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Icon(Icons.water_drop, color: Colors.blue),
                    Text("24%", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Humidity", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold))
                  ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.water_outlined, color: Colors.white),
                      Text("87%", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                      Text("Rain", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              itemCount: weekWeatherList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(weekWeatherList[index].day, style: const TextStyle(color: Colors.grey, fontSize: 25)),
                      Row(
                        children: [
                          SizedBox(
                              height: 45,
                              child: Image.asset(
                                weekWeatherList[index].image,
                              )),
                          const SizedBox(width: 10),
                          Text(weekWeatherList[index].name, style: const TextStyle(color: Colors.grey, fontSize: 25))
                        ],
                      ),
                      RichText(
                          text: TextSpan(
                              text: weekWeatherList[index].tem1,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                              children: <TextSpan>[
                            TextSpan(
                                text: weekWeatherList[index].tem2,
                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 25))
                          ]))
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
