import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';

import 'package:http/http.dart' as http;

class Crud {
  getRequest(String url) async {
    try {
      var respons = await http.get(Uri.parse(url));
      if (respons.statusCode == 200) {
        var responseBody = jsonDecode(respons.body);
        return responseBody;
      } else {
        print("respons statusCode : ${respons.statusCode}");
      }
    } catch (e) {
      print("ereer caych : $e");
    }
  }

  //

  postRequest(String url, Map data) async {
    try {
      var respons = await http.post(Uri.parse(url), body: data );

      if (respons.statusCode == 200) {
        var responseBody = jsonDecode(respons.body);

        return responseBody;
      } else {
        print("respons statusCode : ${respons.statusCode}");
      }
    } catch (e) {
      print("ereer caych : $e");
    }
  }

  //

  postRequestWithFile(String url, Map data, File file) async {
    try {
      print("1================================");
      var requst = http.MultipartRequest('POST', Uri.parse(url));
      print("2================================");

      var lenght = await file.length();
      print("3================================");

      var strem = http.ByteStream(file.openRead());
      print("4================================");

      var multipartFile = http.MultipartFile("file", strem, lenght,
          filename: basename(file.path));
      print("5================================");

      // var respons = await http.post(Uri.parse(url), body: data);
      print("6================================");

      requst.files.add(multipartFile);
      print("7================================");

      // requst.fields['titel'] = data['titel'];
      // requst.fields['countent'] = data['titel'];
      // requst.fields['notes_user'] = 1.toString();

      data.forEach((key, value) {
        requst.fields[key] = value;
      });
      print("8================================");

      var myRequst = await requst.send();
      print("9================================");

      var response = await http.Response.fromStream(myRequst);
      print("10================================");

      if (response.statusCode == 200) {
        print("11================================");
        print("${response.body}");
        print("${jsonDecode(response.body)}");
        var responseBody = await response.body;
        print("12================================");
        var responsejason = await jsonDecode(responseBody);
        print("13================================");

        print("$responsejason");

        return jsonDecode(responseBody);
      } else {
        print("13================================");

        print("respons statusCode : ${response.statusCode}");
      }
    } catch (e) {
      print("ereer caych : $e");
    }
  }
}
