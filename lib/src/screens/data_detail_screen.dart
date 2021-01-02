import 'package:app_teste/src/controllers/home_controller.dart';
import 'package:app_teste/src/model/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataDetailScreen extends StatelessWidget {

  final Data data;

  final HomeController homeController = HomeController();

  DataDetailScreen(this.data);

  @override
  Widget build(BuildContext context) {


    print("HOME CONTROLLE SINGLETONR: ${Get.find<HomeController>().datas.length}");
    print("HOME CONTROLLER NOVO: ${homeController.datas.length}");

    print("CNJP: ${Get.find<HomeController>().cnpj}");
    print("CNJP NOVO: ${homeController.cnpj}");

    return Scaffold(
      body: Container(
        child: Center(
          child: Text(data.toJson().toString()),
        ),
      ),
    );
  }
}
