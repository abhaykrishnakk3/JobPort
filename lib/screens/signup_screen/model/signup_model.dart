class SignUpModel {
  String fullName;
  String email;
  String password;
  String role;

  SignUpModel(
      {required this.fullName,
      required this.email,
      required this.password,
      required this.role});


      Map<String ,dynamic> tojson()=>{
        "email":email,
        "first_name":fullName,
        "role":role,
        "password":password
      };


}
