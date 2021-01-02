import 'package:app_teste/src/model/data.dart';
import 'package:app_teste/src/util/network_helper.dart';

class DataRepository {

  static Future<List<Data>> getDatas() async{


    List<Data> datas = [];


    var map = await NetworkHelper.get("");

    var listOfMaps =  map["data"];

    //print(listOfMaps);


    if(listOfMaps != null && listOfMaps.isNotEmpty){

      listOfMaps.forEach((m) => datas.add(Data.fromJson(m)));

    }


    print(datas.length);


    return datas;

  }

}