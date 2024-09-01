import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_learn/controller/firebase_controller/add_info.dart';
import 'package:firebase_learn/controller/firebase_controller/get_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddInfoController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController depController = TextEditingController();
  TextEditingController joinDateController = TextEditingController();
  TextEditingController validityController = TextEditingController();
  RxBool isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  RxList<dynamic> user = [].obs;

  addUserInfo() async {
    Map<String, dynamic> user = {
      "name": nameController.text,
      "id": idController.text,
      "course name": courseController.text,
      "institute": instituteController.text,
      "department": depController.text,
      "join date": joinDateController.text,
      "validity": validityController.text
    };
    isLoading.value = true;
    log("================");
    var status = await AddInfoService.addInfoService(info: user);
    log("=======11111111=========");
    isLoading.value = false;
    if (status) {
      nameController.clear();
      idController.clear();
      courseController.clear();
      instituteController.clear();
      depController.clear();
      joinDateController.clear();
      validityController.clear();
    }
  }

  getUserInfo() async {
    isLoading.value = true;
    log("================");
    QuerySnapshot<Map<String, dynamic>>? get =
        await GetInfoService.getInfoService();
    if (get != null) {
      for (var data in get.docs.toList()) {
        var name = ({data["name"]});
        log("++++++++++++++user: $name");
      }
    }
    isLoading.value = false;
  }
}
