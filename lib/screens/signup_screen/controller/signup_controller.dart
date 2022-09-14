import 'package:get/get.dart';
import 'package:second_project_main/screens/signup_screen/model/signup_model.dart';
import 'package:second_project_main/service/api_serviece.dart';

class SignUpController extends GetxController {
  ApiServiece apiServiece = ApiServiece();
  signUp(SignUpModel signUp, formkey) {
    if (formkey.currentState!.validate()) {
      apiServiece.signUPApi(signUp);
    }
  }
}

