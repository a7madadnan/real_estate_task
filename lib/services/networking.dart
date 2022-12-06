import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';

final networkHelper = NetworkHelper();

class NetworkHelper {
  Dio dio = Dio();

  Future<Response<dynamic>> getHttp(
      String url, int pageNumber, int pageSize) async {
    try {
      var response = await dio.get(url,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'text/plain',
            'Authorization': 'Bearer null',
            'Accept-Language': 'en',
            'Accept-Encoding': 'gzip'
          }),
          queryParameters: {
            "skip": pageNumber,
            "take": pageSize,
            "currency": "IQD",
            "offerType": "SELL"
          });
      if (kDebugMode) {
        print(response.data);
      }
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Response(data: null, requestOptions: RequestOptions(path: ""));
    }
  }
}
