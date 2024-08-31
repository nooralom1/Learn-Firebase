import 'package:firebase_learn/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class InfoViewCard extends StatelessWidget {
  const InfoViewCard({
    super.key, required this.name, required this.id, required this.course, required this.institute, required this.department, required this.join, required this.validity,
  });
  final String name;
  final String id;
  final String course;
  final String institute;
  final String department;
  final String join;
  final String validity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height/5,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(text: name,),
                CommonText(text: id,),
                CommonText(text: course,),
                CommonText(text: institute,),
                CommonText(text: department,),
                CommonText(text: join,),
                CommonText(text: validity,)
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}