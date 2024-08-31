import 'package:firebase_learn/controller/getx_controller/add_info.dart';
import 'package:firebase_learn/view/common_widget/common_button.dart';
import 'package:firebase_learn/view/screen/home/widget/infoviewcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    AddInfoController controller = Get.put(AddInfoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const InfoViewCard(
            name: 'Name: ',
            id: 'Id: ',
            course: 'Course Name: ',
            institute: 'Institute: ',
            department: 'Department: ',
            join: 'Join Date: ',
            validity: 'Validity: ',
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: CommonButton(
            buttonName: "ADD INFO",
            onTap: () {
              controller.getUserInfo();
            }),
      ),
    );
  }
}
