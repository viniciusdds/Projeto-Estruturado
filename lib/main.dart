import 'package:app_teste/src/controllers/home_controller.dart';
import 'package:app_teste/src/repository/data_repostory.dart';
import 'package:app_teste/src/screens/home_screen.dart';
import 'package:app_teste/src/util/network_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  //await NetworkHelper.request("listarPedidos");
  //await DataRepository.getDatas();

  Get.put(HomeController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //Theme.of(context).primaryColor
    //Get.theme.primaryColor;

    //Get.context;

    //MediaQuery.of(context).size.height;
    //Get.height;
    //Get.width;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}



