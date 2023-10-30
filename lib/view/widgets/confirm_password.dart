import 'package:flutter/material.dart';
import 'package:student_details/view/homepage/home_page.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmPasswordController,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        ),

      ),
    validator: (value){
       if (value!.isEmpty) {
                      return 'Enter Correct Password';
                    } else {
                      return null;
                    }
    },
    );
  }
}
