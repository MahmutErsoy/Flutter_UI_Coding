import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app_ui/data/data.dart';
import 'package:medical_app_ui/size_config.dart';
import 'package:medical_app_ui/style/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 7),
            child: const Column(
              children: [
                // User Info Area
                UserInfo(),
                //SearchMedical Area
                SearchMedical(),
                // Services Area
                Services(),
                // Get Best Medical Service
                GetBestMedicalService()
              ],
            ),
          ),
          // Upcoming Appointments
          const UpcomingAppointments(),
        ],
      ),
    );
  }
}

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 7),
          child: Text(
            "Upcoming Appointments",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: upcomingAppointmentsList
                .map((e) => TextButton(
                    onPressed: () {},
                    child: Container(
                      height: SizeConfig.blockSizeVertical! * 17,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            width: 71,
                            height: 99,
                            decoration: const BoxDecoration(
                                color: Colors.white12, borderRadius: BorderRadius.all(Radius.circular(26))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  e.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                e.time,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(letterSpacing: 1, color: Colors.white),
                              ),
                              Text(
                                e.title,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold, height: 1.8, letterSpacing: 1),
                              ),
                              Text(
                                e.subTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(letterSpacing: 1, height: 1.8, color: Colors.white60),
                              ),
                            ],
                          )
                        ],
                      ),
                    )))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class GetBestMedicalService extends StatelessWidget {
  const GetBestMedicalService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffDCEDF9),
              borderRadius: BorderRadius.all(Radius.circular(28.0)),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal! * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get the Best\nMedical Service",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                        Text(
                          "Lorem Ipsum is simply dummy\ntext of the printing",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                fontSize: 11.0,
                                height: 1.5,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 2),
                    child: Image.asset(AppStyle.image1),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: servicesList
                .map(
                  (e) => TextButton(
                      onPressed: () {},
                      child: Container(
                        width: SizeConfig.blockSizeHorizontal! * 17,
                        height: SizeConfig.blockSizeHorizontal! * 17,
                        decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: SvgPicture.asset(e.image),
                        ),
                      )),
                )
                .toList())
      ],
    );
  }
}

class SearchMedical extends StatelessWidget {
  const SearchMedical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            prefixIcon: TextButton(onPressed: () {}, child: SvgPicture.asset(AppStyle.searchIcon)),
            suffixIcon: TextButton(
              onPressed: () {},
              child: SvgPicture.asset(AppStyle.filtterIcon),
            ),
            hintText: "Search medical..",
            fillColor: AppStyle.inputFillColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none)),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(top: 7),
        child: Text("👋 Hello!"),
      ),
      subtitle: Text(
        "Mahmut Ersoy",
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w700),
      ),
      trailing: Container(
        width: 48.0,
        height: 48.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppStyle.profile), fit: BoxFit.fill, repeat: ImageRepeat.repeat),
            borderRadius: const BorderRadius.all(Radius.circular(18.0))),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 18.0,
              height: 18.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyle.primarySwatch,
                  border: Border.all(color: Colors.white, width: 3.0, style: BorderStyle.solid)),
            )
          ],
        ),
      ),
    );
  }
}
