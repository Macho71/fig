import 'package:dio/dio.dart';
import 'package:fig/core/response_hade.dart';

class Service {
  static Future<ResponseHandler> sing(
      {required String userName,

      required String paswword}) async {
    try {
      Response response = await Dio().post(
          "http://192.168.1.3:4000/register",
          data: {"username": userName,  "password": paswword});
      if (response.statusCode == 201) {
        return SuccsesResponse();
      } else {
        return ErrorResponse(response.statusMessage.toString());
      }
    } on DioError catch (e) {
      return ExcaptionResponse(e);
    }
  }

  static Future login() async {}
}
