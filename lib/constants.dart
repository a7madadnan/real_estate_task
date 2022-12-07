import 'package:flutter/material.dart';

const kYTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const kYTextStyle2 = TextStyle(
  fontSize: 14,
);
const kYTextStyle3 = TextStyle(
  fontSize: 18,
  color: Color(0xff035050),
);

class ApiDocument {
  const ApiDocument._();
  //This is the base url of our api
  static const baseApi = "https://api.ibaity.com/v1";

//Below are the endpoints of our baseApi
  static const realEstateApi = "$baseApi/realestate";
}
