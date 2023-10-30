import 'package:flutter/material.dart';
import 'package:student_details/helpers/colors.dart';

class StudentLoginContainer extends StatelessWidget {
  const StudentLoginContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color:ConstantColors.containerColor,
      child: const Center(
        child: Text(
          'Student Login',
          style: TextStyle(
              color: ConstantColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ),
    );
  }
}

