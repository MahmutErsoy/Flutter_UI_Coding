import 'package:car_sales_app_ui/data/data.dart';
import 'package:car_sales_app_ui/size_config.dart';
import 'package:car_sales_app_ui/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Column(
            children: const [Options(), SearchCars(), BestBrands(), BestCars()],
          )
        ],
      ),
    );
  }
}

class BestCars extends StatelessWidget {
  const BestCars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("Best Cars",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700, fontSize: 25)),
            ),
            TextButton(onPressed: () {}, child: SvgPicture.asset(AppStyle.filterIcon))
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: bestCarsList
                .map((e) => TextButton(
                    onPressed: () {},
                    child: Container(
                      height: SizeConfig.blockSizeVertical! * 17,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Image.asset(e.image),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                e.title,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.black, fontWeight: FontWeight.bold, height: 1.8, letterSpacing: 1),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 6, 98, 173),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    e.subtitle,
                                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                          letterSpacing: 1,
                                          height: 1.8,
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )))
                .toList(),
          ),
        )
      ],
    );
  }
}

class BestBrands extends StatelessWidget {
  const BestBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Best Brands",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700, fontSize: 25)),
          ),
        ),
        const SizedBox(height: 12),
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: servicesList
                .sublist(0, 3)
                .map(
                  (e) => TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(20)),
                        child: Center(child: SvgPicture.asset(e.image)),
                      )),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: servicesList
                .sublist(3, 6)
                .map((e) => TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(20)),
                      child: Center(child: SvgPicture.asset(e.image)),
                    )))
                .toList(),
          ),
        ])
      ],
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: SizedBox(
        height: 60,
        width: 65,
        child: TextButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: SvgPicture.asset(
            AppStyle.notificationsIcon,
          ),
        ),
      ),
      leading: TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        child: SvgPicture.asset(AppStyle.categoryIcon),
      ),
    );
  }
}

class SearchCars extends StatelessWidget {
  const SearchCars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Cars...",
            contentPadding: const EdgeInsets.only(top: 25),
            prefixIcon: TextButton(onPressed: () {}, child: SvgPicture.asset(AppStyle.searchIcon)),
            suffixIcon: TextButton(onPressed: () {}, child: SvgPicture.asset(AppStyle.voiceIcon)),
            filled: false,
            border: const UnderlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
