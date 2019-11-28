import 'package:http/http.dart';
import 'dart:convert';

class Networking {
  final String url;
  Networking({this.url});

  Future<dynamic> getRequest() async {
    try {
      dynamic response = await get(url);
      if (response.statusCode < 200 && response.statusCode > 99) {
        print('Processing');
      } else if (response.statusCode < 300) {
        dynamic jsonData = json.decode(response.body);
        return jsonData;
      } else if (response.statusCode < 400) {
        print('Redirection');
      } else if (response.statusCode < 500) {
        print('Bad URL');
      } else if (response.statusCode < 600) {
        print('Server Failed');
      }
    } catch (e) {
      print('Error : $e');
    }
  }
}
