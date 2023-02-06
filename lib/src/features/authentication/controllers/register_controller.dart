// import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class RegisterController extends GetxController{
//   static RegisterController get instance => Get.find();
//
//   final fullname = TextEditingController();
//   final username = TextEditingController();
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final konfpassword = TextEditingController();
//   final nomorIdentitas = TextEditingController();
//   final phone = TextEditingController();
//   final alamat = TextEditingController();
//   final jeniskelamin = TextEditingController();
//
//   void registerUser(String email, String password){
//     String? error = AuthenticatorRepository.instance.createUserWithEmailandPassword(email,password) as String?
//         if(error != null){
//           Get.showSnackbar(GetSnackBar(message: error.toString(),));
//         }
//   }
// }