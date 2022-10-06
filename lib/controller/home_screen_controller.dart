import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/home_screen_response_model.dart';

class HomeController extends GetxController {
  RxList<HomeResponse> homeData = <HomeResponse>[].obs;

  Future<void> onInit() async {
    super.onInit();
    await getHomedata(refresh: true);
  }

  Future getHomedata({required refresh}) async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),

    );
    homeData.value = homeResponseFromJson(response.body);

  }
}