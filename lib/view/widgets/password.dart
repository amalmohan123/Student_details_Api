import 'package:flutter/material.dart';
import 'package:student_details/view/homepage/home_page.dart';

class Password extends StatelessWidget {
  const Password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) => value!.isEmpty ? 'Enter password' : null,
    );
  }
}
