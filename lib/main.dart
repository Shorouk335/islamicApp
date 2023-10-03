import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/widget/CustomBox/CustomCounterBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomHomeBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomSalatTimeBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomTextBox.dart';
import 'package:islamic_app/widget/CustomBox/CustomIconWithNameBox.dart';
import 'package:islamic_app/widget/sharedWidget/sharedWidget.dart';
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
      child: const MyApp(),
      supportedLocales: [Locale("en"), Locale("ar")],
      fallbackLocale: Locale("ar"),
    //  assetLoader: Codegenerate(),
      path: "assets/translations/"));
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
        appBar: AppBar(
          title: Text("Islamic app"),
          backgroundColor: ColorManager.darkGreenColor,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            CustomCounterBox(
                text: ayah, defultTimes: "٣", duration: 3, totalTimes: 250),
            SharedWidget.Counter(context, duration: 3, height: 5, width: 4),
            CustomTodyBox(
                imgType: "quran",
                title: "أية",
                subTitle: " (21) سورة البقرة ",
                text: ayah),
            CustomIconWithNameBox(
                imgPath: "assets/images/doaa.png",
                name: "أذكار الصباح",
                number: 15,
                type: true),
            CustomIconWithNameBox(
                imgPath: "assets/images/doaa.png",
                name: "أدعية المساء",
                number: 15,
                type: false),
            CustomAyah(ayah: "الحمد لله رب العالمين", number: 1),
            CustomSuraNameBox(
                name: "سورة الفاتحة",
                numberOfAyah: 1,
                numberOfGuza: "الجزء الاول"),
            CustomMainBox(),
            CustomCategpryBox(
                title: "القران الكريم", imgPath: "assets/images/pic.png"),
            CustomCategpryBox(
                title: "الاذكار", imgPath: "assets/images/pic.png"),
            CustomSalatTimeBox(
              title: "موعد اذان العصر",
              time: "5:00 PM",
              active: false,
            ),
            CustomSalatTimeBox(
              title: "موعد اذان العصر",
              time: "5:00 AM",
              active: true,
            ),
            CustomTextBox(
              title: "اذكار الصباح والمساء",
            ),
            CustomTextBox(
                title: " سبحان الله وبحمده عدد خلقه وزنه عرشه ومداد كلماته ")
          ]),
        ),
      ),
    );
  }
}
