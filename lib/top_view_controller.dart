import 'package:get/get.dart';
import 'zipcode_search_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TopViewController extends GetxController {
  final zipCodeSearchModel = Rxn<ZipCodeSearchModel>();

  Future<void> searchZipCode(String inputCode) async {
    print(inputCode);
    var response = await http.get(Uri.parse(
        'https://zipcloud.ibsnet.co.jp/api/search?zipcode=${inputCode}'));
    print('Response body: ${jsonDecode(response.body)}');
    var zipCodeSearchModel =
        ZipCodeSearchModel.fromJson(jsonDecode(response.body));

    this.zipCodeSearchModel.value = zipCodeSearchModel;
  }
}
