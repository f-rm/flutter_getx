// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zipcode_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZipCodeSearchModel _$ZipCodeSearchModelFromJson(Map<String, dynamic> json) =>
    ZipCodeSearchModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ZipCodeSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ZipCodeSearchModelToJson(ZipCodeSearchModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'results': instance.results,
    };

ZipCodeSearchResult _$ZipCodeSearchResultFromJson(Map<String, dynamic> json) =>
    ZipCodeSearchResult(
      zipcode: json['zipcode'] as String?,
      prefcode: json['prefcode'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      kana1: json['kana1'] as String?,
      kana2: json['kana2'] as String?,
      kana3: json['kana3'] as String?,
    );

Map<String, dynamic> _$ZipCodeSearchResultToJson(
        ZipCodeSearchResult instance) =>
    <String, dynamic>{
      'zipcode': instance.zipcode,
      'prefcode': instance.prefcode,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'kana1': instance.kana1,
      'kana2': instance.kana2,
      'kana3': instance.kana3,
    };
