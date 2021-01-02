import 'package:app_teste/src/controllers/home_controller.dart';
import 'package:app_teste/src/tiles/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  final HomeController homeController = Get.find();


  @override
  Widget build(BuildContext context) {

    //homeController.getDatas();

    return Scaffold(
      appBar: AppBar(),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Obx(() {

          if(homeController.loading.value){

            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.blue
                ),
              ),
            );

          } else if(homeController.datas.isEmpty){

            return Center(
              child: Text("Vazio"),
            );

          } else {

            return ListView.builder(
              shrinkWrap: true,
              itemCount: homeController.datas.length,
              itemBuilder: (_, index){

                return CustomListTile(homeController.datas[index], index);

              },
            );


          }

        }),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          Get.defaultDialog(
            title: "Adicionar data",
            content: Form(
              key: homeController.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "ID",
                      border: OutlineInputBorder()
                    ),
                    inputFormatters: [

                      FilteringTextInputFormatter.digitsOnly,

                    ],
                    keyboardType: TextInputType.number,
                    validator: (String v){
                      if(v.isEmpty)
                        return "TA VAZIO ID";
                      else
                        return null;
                    },
                    onSaved: (String v){
                      homeController.data.uid = int.tryParse(v);
                    },
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "STATE",
                        border: OutlineInputBorder()
                    ),
                    validator: (String v){
                      if(v.isEmpty)
                        return "TA VAZIO STATE";
                      else
                        return null;
                    },
                    onSaved: (String v){
                      homeController.data.state = v;
                    },
                  ),

                  RaisedButton(
                    child: Text("Adicionar"),
                    onPressed: (){

                      homeController.addData();

                    },
                  )

                ],
              ),
            )
          );

        },
      ),
    );
  }

}
