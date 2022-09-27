import 'package:digital_14/configs/app_config.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

import '../models/search_model.dart';


Future<SearchModel?> getEvents(String query) async {
  SearchModel? searchModel;
  
  try {
    var request = http.Request(
      'GET',
      Uri.parse("${AppConfig.baseUrl}?q=$query&client_id=${AppConfig.clientId}&client_secret=${AppConfig.clientSecret}")
    );

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      searchModel = searchModelFromJson(data);
    } else {
      EasyLoading.showError("No Data Found!");
    }
  } catch (e) {
    debugPrint(e.toString());
  }

  return searchModel;
}