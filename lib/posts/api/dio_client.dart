import 'package:dio/dio.dart';
import 'package:flutter_bloc_practice/helpers/api/configuration.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  static BaseOptions baseOptions = BaseOptions(baseUrl: Configuration.base_url);
  final Dio dio = Dio(baseOptions)
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
}
