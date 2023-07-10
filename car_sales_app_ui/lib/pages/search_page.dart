import 'package:car_sales_app_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/app_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Column(
            children: [
              const Options(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Browse Cars",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w700, fontSize: 25)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: servicesList
                            .map((e) => TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 90,
                                  width: 130,
                                  decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: SvgPicture.asset(e.image),
                                  ),
                                )))
                            .toList(),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
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
