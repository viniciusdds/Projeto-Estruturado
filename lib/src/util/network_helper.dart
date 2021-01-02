import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
   
  static final url = "https://covid19-brazil-api.now.sh/api/report/v1";
  
  // listarPedidos
  
  static Future get(String action) async {

    var client = http.Client();

    print("$url");

    try {
      var response = await client.get(url);

      print("REPSONSE; $response");

      var list = json.decode(response.body);

     // print(list);

      return list;

    } catch(e) {

      print("ERRO: $e");

    }
    finally {
      client.close();
    }
  }


  }
