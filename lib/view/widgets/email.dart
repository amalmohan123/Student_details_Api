


import 'package:flutter/material.dart';

import 'package:student_details/view/homepage/home_page.dart';

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:emailController ,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Email',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
       validator: (value){
       if (value!.isEmpty) {
                      return 'Enter the email';
                    } else {
                      return null;
                    }
    },
    );
  }
}
