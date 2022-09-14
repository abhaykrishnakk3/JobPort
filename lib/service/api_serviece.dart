import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:second_project_main/screens/signup_screen/model/signup_model.dart';

class ApiServiece {
  signUPApi(SignUpModel signup) async {
    try {
      Response responce =
          await Dio().post('http://10.0.2.2:8000/api/user/signup/',
              data: signup.tojson(),
              options: Options(headers: <String, String>{
                'Content-Type': 'application/json',
              }));
      log(responce.toString());

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        print("Success");
      } else {
        log(responce.statusCode.toString());
      }
    } on DioError catch (e) {
      log("object");
      log(e.toString());
      if (e.error.toString().contains('SocketException')) {
        log('connection error');
        return;
      }
      log('message');
    }
  }
}
