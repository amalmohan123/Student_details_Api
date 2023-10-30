import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_details/view/homepage/home_page.dart';

class ContactNumber extends StatelessWidget {
  const ContactNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: contactNumberController,
      maxLength: 10,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[0-9]'),
        ),
      ],
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Contact Number',
        filled: true,
        fillColor: const Color.fromARGB(255, 196, 169, 243),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ), validator: (value){
       if (value!.isEmpty) {
                      return 'Enter the number';
                    } else {
                      return null;
                    }
    },

    );
  }
}
