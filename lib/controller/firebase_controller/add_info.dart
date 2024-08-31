import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';


class AddInfoService{

  static Future<bool> addInfoService({required Map<String,dynamic>info})async{
    try{
      log("+++++++++++++");
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("User Info").add(info);
      log("++++++111111+++++++");
      return true;
    }catch(e){
      log("+++++++22222222222++++++");
      debugPrint("Error: $e");
    }
    log("++++++333333+++++++");
    return false;
  }
}