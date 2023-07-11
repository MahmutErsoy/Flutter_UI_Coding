import 'package:flutter/material.dart';
import 'package:project_detail_ui/Screens/detail_screen.dart';
import 'package:project_detail_ui/product/app_strings.dart';
import 'package:project_detail_ui/widgets/check_list.dart';
import 'package:project_detail_ui/widgets/container_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.home_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.file_copy_outlined),
            ),
            Opacity(opacity: 0, child: Icon(Icons.no_cell)),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.calendar_today_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.person_outlined),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(AppStrings().userName,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 25)),
          subtitle: Text(AppStrings().position, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 35,
                )
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerWidget(
                  radius: 20,
                  color: Theme.of(context).primaryColorLight,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 50,
                  width: double.infinity,
                  border: false,
                  child: Text(AppStrings().search,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400))),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings().project,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    AppStrings().seeAll,
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    AppStrings().inProgress,
                    style: const TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(AppStrings().todo, style: const TextStyle(fontSize: 20, color: Colors.grey)),
                  Text(AppStrings().done, style: const TextStyle(fontSize: 20, color: Colors.grey)),
                  Text(AppStrings().upcoming, style: const TextStyle(fontSize: 20, color: Colors.grey))
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailScreen()));
                      },
                      child: ContainerWidget(
                        radius: 30,
                        color: index.isEven ? Theme.of(context).primaryColor : Theme.of(context).highlightColor,
                        padding: const EdgeInsets.all(20),
                        height: 150,
                        width: 250,
                        border: false,
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings().uiDashBoard,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: index.isEven ? Colors.white : Colors.black),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Expanded(
                                  child: Stack(
                                    children: [
                                      CircleAvatar(backgroundImage: AssetImage("assets/images1.jpeg")),
                                      Positioned(
                                          left: 22,
                                          child: CircleAvatar(backgroundImage: AssetImage("assets/images2.jpeg"))),
                                      Positioned(
                                          left: 45,
                                          child: CircleAvatar(backgroundImage: AssetImage("assets/images3.jpeg"))),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_outlined,
                                            size: 17,
                                            weight: 20,
                                            color: index.isEven
                                                ? Theme.of(context).scaffoldBackgroundColor
                                                : Theme.of(context).primaryColor),
                                        const SizedBox(width: 10),
                                        Text(
                                          AppStrings().date,
                                          style: TextStyle(
                                              color: index.isEven ? Colors.white : Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 17,
                                          color: index.isEven
                                              ? Theme.of(context).scaffoldBackgroundColor
                                              : Theme.of(context).primaryColor,
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          AppStrings().time,
                                          style: TextStyle(
                                              color: index.isEven ? Colors.white : Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.76,
                                minHeight: 10,
                                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppStrings().inProgress,
                                    style: TextStyle(color: index.isEven ? Colors.white : Colors.grey, fontSize: 17)),
                                Text("88%",
                                    style: TextStyle(color: index.isEven ? Colors.white : Colors.grey, fontSize: 17))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings().myDailyTask,
                        style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400)),
                    Text(
                      AppStrings().edit,
                      style: const TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CheckList("Sketching logo and coloring"),
              const SizedBox(height: 5),
              CheckList("Landing page design"),
              const SizedBox(height: 5),
              CheckList("UI Kit design"),
            ],
          ),
        ),
      ),
    );
  }
}
