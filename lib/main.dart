import 'package:flutter/material.dart';
import 'package:minggu7/GetX_W09/controller/demoController.dart';
import 'package:minggu7/GetX_W09/view/demoPage.dart';
import 'package:minggu7/GetX_W09/view/home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp ());
  }

class MyApp extends StatelessWidget {
  final DemoController ctrl = Get.put(DemoController());

  Widget build(BuildContext context){
    return SimpleBuilder(builder: (_){
      return GetMaterialApp(
        title: 'GetX',
        theme: ctrl.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/cart': (context)=> DemoPage(),
        },
      );
    },);
  }
}