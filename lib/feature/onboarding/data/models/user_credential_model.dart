import 'package:weather_app/core/_core_export.dart';

class UserCredentialModel extends UserCredential {
  UserCredentialModel({
    required super.name,
    required super.email,
    required super.password,
  });

  UserCredentialModel.fromJson(Map<String, dynamic> json)
      : super(
          name: json["name"],
          email: json["email"],
          password: json["password"],
        );

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}
