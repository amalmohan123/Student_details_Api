import 'package:flutter/material.dart';
import 'package:student_details/view/homepage/home_page.dart';

class StudentName extends StatelessWidget {
  const StudentName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: studentNameController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              const BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Student Name',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
       validator: (value) => value!.isEmpty ? 'Enter the name' : null,
    );
  }
}
