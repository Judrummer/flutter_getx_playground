import 'package:get/get_connect/connect.dart';

extension GetResponseExtension on Future<Response> {
  Future<T> decodeJson<T>(T Function(Map<String, dynamic>) fromJson) => then((value) => fromJson(value.body));

  Future<List<T>> decodeJsonList<T>(
    T Function(Map<String, dynamic>) fromJson,
  ) =>
      then((value) => (value.body as List<dynamic>).map((item) => fromJson(item)).toList());
}
