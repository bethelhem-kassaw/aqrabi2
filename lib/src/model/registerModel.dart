

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
    RegisterModel({
        this.firstname,
        this.lastname,
        this.password,
        this.address,
        this.phonenumber,
    });

    String? firstname;
    String? lastname;
    String? password;
    String? address;
    String? phonenumber;

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        firstname: json["firstname"],
        lastname: json["lastname"],
        password: json["password"],
        address: json["address"],
        phonenumber: json["phonenumber"],
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "password": password,
        "address": address,
        "phonenumber": phonenumber,
    };
}
