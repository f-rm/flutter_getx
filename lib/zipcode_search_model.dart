import 'package:json_annotation/json_annotation.dart';
part 'zipcode_search_model.g.dart';

@JsonSerializable()
class ZipCodeSearchModel {
  ZipCodeSearchModel({this.status, this.message, this.results});
  int? status;
  String? message;
  List<ZipCodeSearchResult>? results;

  factory ZipCodeSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ZipCodeSearchModelFromJson(json);
}

@JsonSerializable()
class ZipCodeSearchResult {
  ZipCodeSearchResult(
      {this.zipcode,
      this.prefcode,
      this.address1,
      this.address2,
      this.address3,
      this.kana1,
      this.kana2,
      this.kana3});

  String? zipcode;
  String? prefcode;
  String? address1;
  String? address2;
  String? address3;
  String? kana1;
  String? kana2;
  String? kana3;

  factory ZipCodeSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ZipCodeSearchResultFromJson(json);
}
