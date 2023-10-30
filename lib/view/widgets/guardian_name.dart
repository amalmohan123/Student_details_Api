import 'package:flutter/material.dart';
import 'package:student_details/view/homepage/home_page.dart';

class GuardianName extends StatelessWidget {
  const GuardianName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: guardianNameController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              const BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Guardian Name',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
       validator: (value){
       if (value!.isEmpty) {
                      return 'Enter guardian name';
                    } else {
                      return null;
                    }
    },
    );
  }
}