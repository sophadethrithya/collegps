import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class collegeGPSHTTP {
  Future<Map> getResult(String gpa, String sat, String act, String apScore,
      String mbti, String residence, String loanAmount) async {
    String url =
        "https://bill-zheng-project.herokuapp.com/getschool/$gpa/$sat/$act/$apScore/$mbti/$residence/$loanAmount";
    print(url);
    print("here");
    http.Response response = await http.get(url);
    Map values = jsonDecode(response.body);

    return values;
  }
}
