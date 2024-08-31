import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key, required this.hintText, required this.controller,
  });
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              errorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(10)),
              focusedErrorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(10)),
              hintText: hintText,
          ),
          validator: (value){
            if(value==null || value==""){
              const ScaffoldMessenger(child: SnackBar(content: Text("This field can't be emty !")));
            }
            return null;
          },
        ),
      ),
    );
  }
}
