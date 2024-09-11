import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:getx_learn_continue/home_binding.dart';
import 'package:getx_learn_continue/localizations/app_localization.dart';
import 'package:getx_learn_continue/view/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeBinding().dependencies();
  await GetStorage.init();

  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  GetStorage box = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(box.read("lang"));

    return GetMaterialApp(
      initialRoute: '/',
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        )
      ],
      // English => en, Indonesian => id, Arabic => ar, French => fr
      locale: (box.read("lang") == null)
          ? const Locale("en")
          : Locale(box.read("lang")),
      translations: AppLocalization(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
