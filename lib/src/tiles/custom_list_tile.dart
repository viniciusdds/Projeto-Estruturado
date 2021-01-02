import 'package:app_teste/src/controllers/home_controller.dart';
import 'package:app_teste/src/model/data.dart';
import 'package:app_teste/src/screens/data_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {

  final Data data;
  final int index;
  final HomeController homeController = Get.find();

  CustomListTile(this.data, this.index);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(data.uid.toString()),
        subtitle: Text(data.state),
        onTap: (){

          Get.to(DataDetailScreen(data));

          //Get.off();
          //Get.offAll();

          /*
          Get.defaultDialog(
              title: "Editar data",
              content: Form(
                key: homeController.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    TextFormField(
                      initialValue: data.uid.toString() ,
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
                      initialValue: data.state,
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
                      child: Text("Salvar alteração"),
                      onPressed: (){

                        homeController.updateData(index);

                      },
                    )

                  ],
                ),
              )
          );
           */

        },
        onLongPress: (){

          Get.find<HomeController>().remove(index);

        },
      ),
    );
  }
}
