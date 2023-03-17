import 'dart:html';

import 'package:dio/dio.dart';
import 'package:second_assessment/model/register_model.dart';

abstract class Services {
  static pickFile() async {
    FileUploadInputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      // Do something with selected file.
      final files = uploadInput.files;
      if (files!.length == 1) {
        final file = files[0];
        // handle the file
      }
    });
  }

//register
  static Future<RegisterModel?> registerUser(
    String username,
    String password,
    String firstName,
    String lastName,
    int telephone,
    String profileImage,
    String address,
    String city,
    String province,
    String country,
  ) async {
    try {
      var response =
          await Dio().post('http://13.212.226.116:8000/api/register', data: {
        "username": username,
        "password": password,
        "first_name": firstName,
        "last_name": lastName,
        "telephone": telephone,
        "profile_image": profileImage,
        "address": address,
        "city": city,
        "province": province,
        "country": country
      });
      if (response.statusCode == 201) {
        return RegisterModel(
            username: response.data['username'],
            password: response.data['password'],
            firstName: response.data['first_name'],
            lastName: response.data['last_name'],
            telephone: response.data['telephone'],
            address: response.data['address'],
            profileImage: response.data['profile_image'],
            city: response.data['city'],
            country: response.data['country'],
            province: response.data['province']);
      }
      return null;
    } catch (e) {
      Exception(e.toString());
    }
  }
}
