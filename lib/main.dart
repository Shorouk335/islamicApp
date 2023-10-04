import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/widget/CustomBox/CustomCounterBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomHomeBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomSalatTimeBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomTextBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomIconWithNameBox.dart';
import 'package:islamic_app/widget/counter.dart';
import 'package:islamic_app/widget/customAppBar.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'widget/CustomBox/CustomQuranBox.dart';
import 'widget/CustomBox/CustomTodayBox.dart';
//flutter pub run easy_localization:generate -S  "assets/translations/" -O "lib/services/Localization" -o "local.dart" -f keys

String ayah =
    "أَلَمۡ یَأۡنِ لِلَّذِینَ ءَامَنُوۤا۟ أَن تَخۡشَعَ قُلُوبُهُمۡ لِذِكۡرِ ٱللَّهِ وَمَا نَزَلَ مِنَ ٱلۡحَقِّ وَلَا یَكُونُوا۟ كَٱلَّذِینَ أُوتُوا۟ ٱلۡكِتَـٰبَ مِن قَبۡلُ فَطَالَ عَلَیۡهِمُ ٱلۡأَمَدُ فَقَسَتۡ قُلُوبُهُمۡۖ وَكَثِیرࣱ مِّنۡهُمۡ ";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('ar'),
      Locale('en'),
    ],
    // assetLoader: const AssetLoader(),
    saveLocale: true,
    fallbackLocale: const Locale('ar'),
    startLocale: const Locale("ar"),
    path: "assets/translations",
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: Scaffold(
        appBar: CustomAppBar (context ,widget:  Text("Welcome", style: TextStyle(color: Colors.white),),),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            CounterBox(),
            CustomCounterBox(
                tasbeh: true,
                text: ayah,
                defultTimes: "3".tr(),
                duration: 3,
                totalTimes: 250),
            CustomCounterBox(
                tasbeh: false,
                text: ayah,
                defultTimes: "3".tr(),
                duration: 3,
                totalTimes: 250),
            CustomTodyBox(
                imgType: "quran",
                title: "today_ayah".tr(),
                subTitle: "surat_elbakra".tr(),
                text: ayah),
            CustomIconWithNameBox(
                imgPath: "assets/images/doaa.png",
                name: "azkar_elsapah".tr(),
                number: 15,
                type: true),
            CustomIconWithNameBox(
                imgPath: "assets/images/doaa.png",
                name: "doaa_elmasa".tr(),
                number: 15,
                type: false),
            CustomAyah(ayah: "thanks_allah_of_all_people".tr(), number: 1),
            CustomSuraNameBox(
                name: "surat_elfateha".tr(),
                numberOfAyah: 1,
                numberOfGuza: "part_one".tr()),
            CustomMainBox(),
            CustomCategpryBox(
                title: "quran_elkarem".tr(), imgPath: "assets/images/pic.png"),
            CustomCategpryBox(
                title: "alazkar".tr(), imgPath: "assets/images/pic.png"),
            CustomSalatTimeBox(
              title: "elaser_time".tr(),
              time: "5:00 PM",
              active: false,
            ),
            CustomSalatTimeBox(
              title: "elaser_time".tr(),
              time: "5:00 AM",
              active: true,
            ),
            CustomTextBox(
              title: "suphan_allah_and_elhamed_allah".tr(),
            ),
            CustomTextBox(
                title: " سبحان الله وبحمده عدد خلقه وزنه عرشه ومداد كلماته ")
          ]),
        ),
      ),
    );
  }
}
