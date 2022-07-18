import 'dart:convert';
import 'dart:io';

import 'package:cache_sample/data/network/api_exceptions.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import 'api_constants.dart';

@lazySingleton
class ApiClient {
  final Client _client;
  ApiClient(this._client);

  Future<dynamic> get(String path, {Map<dynamic, dynamic>? params}) async {
    Map<String, dynamic> responseJson;
    try {
       final response = await _client.get(getPath(path,params), headers: {
      'Content-Type': 'application/json',
    });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
   
  }


  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        final responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  Uri getPath(String path, Map<dynamic, dynamic>? params) {
    var paramsString = '';
    if (params?.isNotEmpty ?? false) {
      params?.forEach((key, value) {
        paramsString += '&$key=$value';
      });
    }

    return Uri.parse(
        '${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}$paramsString');
  }
}
