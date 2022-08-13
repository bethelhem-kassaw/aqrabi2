import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
       required this.phonenumber,
      required  this.password,
    });

    String phonenumber;
    String password;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        phonenumber: json["phonenumber"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "phonenumber": phonenumber,
        "password": password,
    };
}
