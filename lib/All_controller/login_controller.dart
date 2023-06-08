
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class LoginController extends GetxController{
  final emailEditinController = TextEditingController().obs;
  final passwordEditingController= TextEditingController().obs;

void loginApi() async{

  try{

    final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body:{
          'email' : emailEditinController.value.text,
          'password': passwordEditingController.value.text

        });
         var data = jsonDecode(response.body.toString());
        print(data);
        print(response.statusCode);

    if(response.statusCode==200){

      Get.snackbar('Login Sucessfull','Congratulation');

    }else{
       Get.snackbar('Login Failed',data ['error']);

    }

  }catch(e){
      Get.snackbar('Exception', e.toString());

  }



}



}

