import 'package:flutter/material.dart';
import 'package:project_detail_ui/product/app_strings.dart';
import 'package:project_detail_ui/widgets/container_widget.dart';

import '../widgets/check_list.dart';

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
        title: Text(
          AppStrings().taskDetail,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings().uiDashBoard,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ContainerWidget(
                      border: false,
                      color: Colors.lightBlueAccent,
                      height: 80,
                      padding: const EdgeInsets.all(10),
                      radius: 10,
                      width: 100,
                      child: Row(
                        children: [
                          const Expanded(
                            child: Stack(
                              children: [
                                CircleAvatar(backgroundImage: AssetImage("assets/images1.jpeg")),
                                Positioned(
                                    left: 22, child: CircleAvatar(backgroundImage: AssetImage("assets/images2.jpeg"))),
                                Positioned(
                                    left: 45, child: CircleAvatar(backgroundImage: AssetImage("assets/images3.jpeg"))),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_today_outlined, size: 20, color: Colors.black),
                            const SizedBox(width: 10),
                            Text(
                              AppStrings().date,
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.alarm,
                              size: 20,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              AppStrings().time,
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings().attachment, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  Text(AppStrings().seeAll, style: const TextStyle(color: Colors.grey, fontSize: 20))
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ContainerWidget(
                        radius: 15,
                        color: Theme.of(context).primaryColor,
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(5),
                        height: 0,
                        width: 270,
                        border: false,
                        child: ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            child: Icon(Icons.image, color: Theme.of(context).scaffoldBackgroundColor),
                          ),
                          title: Text("Preview.zip",
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
                          subtitle: Text("13mb",
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
                        ));
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(AppStrings().description, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              const SizedBox(height: 20),
              Text(AppStrings().info,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.grey)),
              const SizedBox(
                height: 20,
              ),
              CheckList("10 task Completed"),
              const SizedBox(
                height: 15,
              ),
              CheckList("File add done"),
              const SizedBox(
                height: 15,
              ),
              CheckList("Finishing with style guide"),
            ],
          ),
        ),
      ),
    );
  }
}
