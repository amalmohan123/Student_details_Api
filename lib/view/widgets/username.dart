import 'package:flutter/material.dart';
import 'package:student_details/view/homepage/home_page.dart';

class Username extends StatelessWidget {
  const Username({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userNameController,
      decoration: InputDecoration(
        hintText: 'Username',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
       validator: (value) => value!.isEmpty ? 'Enter Username' : null,
    );
  }
}
