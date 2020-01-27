import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkingHelper {
  NetworkingHelper({this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
//      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
//      print(response.statusCode);
    }
  }
}
