import 'package:flutter/material.dart';

const kYTextStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
const kYTextStyle2 = TextStyle(
  fontSize: 14,
);

class ApiDocument {
  const ApiDocument._();
  //This is the base url of our api
  static const baseApi = "https://api.ibaity.com/v1";

//Below are the endpoints of our baseApi
  static const realEstateApi = "$baseApi/realestate";
}
