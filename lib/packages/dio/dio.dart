import 'package:dio/dio.dart';

const String methodPost = 'POST';
const String methodGet = 'GET';
const String methodDelete = 'DELETE';
const String methodEdit = 'PUT';

const String exchangeRateBaseAPIUrl =
    'http://api.exchangeratesapi.io/v1/latest';
const String weatherBaseAPIUrl = 'https://api.openweathermap.org/data/2.5/';

const String headerKey = 'Accept';
const String headerValue = 'application/json';

Dio dio = Dio(
  BaseOptions(
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  ),
);
Response? response;
CancelToken cancelToken = CancelToken();
