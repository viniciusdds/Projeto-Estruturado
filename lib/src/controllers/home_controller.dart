import 'package:app_teste/src/model/data.dart';
import 'package:app_teste/src/repository/data_repostory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxBool loading = false.obs;
  //final loading = false.obs;

  RxList<Data> datas = <Data>[].obs;
  //final datas = [].obs;

  Data data = Data();

  String cnpj = "";

  @override
  void onInit() {

    getDatas();
    cnpj = "1000";

    super.onInit();
  }

  final formKey = GlobalKey<FormState>();

  Future getDatas() async  {

    loading.value = true;

    datas.addAll(await DataRepository.getDatas());

    loading.value = false;


  }

  void addData(){

    if(formKey.currentState.validate()){

      formKey.currentState.save();

      datas.add(data);

      Get.back();

    }

  }

  void remove(int index){

    datas.removeAt(index);


  }

  void updateData(int index){

    if(formKey.currentState.validate()){

      formKey.currentState.save();

      datas[index] = Data(uid: data.uid, state: data.state);
      datas.refresh();

      Get.back();

    }



  }

}