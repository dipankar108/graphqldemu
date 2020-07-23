import 'package:flutter/foundation.dart';

import 'Countries.dart';

class CountryNameModel {
  List<Countries> countryname;
  CountryNameModel({this.countryname});
  Factory factory;
  factory CountryNameModel.fromJson(Map<String, dynamic> json) {
    return CountryNameModel(countryname: json['countries']);
  }
}
