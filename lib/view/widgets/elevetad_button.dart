// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:student_details/model/student_model.dart';
// import 'package:student_details/view/homepage/home_page.dart';
// import 'package:http/http.dart' as http;

// class SubmitButton extends StatelessWidget {
//   const SubmitButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: const ButtonStyle(
//         backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
//         minimumSize: MaterialStatePropertyAll(
//           Size(125, 48),
//         ),
//       ),
//       onPressed: () {
//         if (formKey.currentState!.validate()) {
//           final UserModel userModel = UserModel(
//             academicYearId: academicYearController.text,
//             address: addressController.text,
//             createdBy: guardianNameController.text,
//             emailId: emailController.text,
//             image: imageController.text,
//             mobileNo: contactNumberController.text,
//             name: studentNameController.text,
//             password: passwordController.text,
//             whatsappNo: whatsappNumberController.text,
//           );
//       postData(userModel)
//         }
//       },
//       child: const Text(
//         'Submit',
//         style: TextStyle(
//             fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//       ),
//     );
//   }
// }


// // Future<void> saveUserData() async {
// //   try {
// //     final apiUrl = 'https://llabdemo.orell.com/api/userService/anonymous/saveUser';
// //     final headers = {'Content-Type': 'application/json'};

// //     final userClassDetailsList = [
// //       {
// //         "userClassId": 0,
// //         "userId": "0",
// //         "classId": semesterValue?.courseTreeId.toString() ?? "0",
// //       },
// //     ];

// //     final requestData = {
// //       "academicYearId": "93",
// //       "address": address.text,
// //       "createdBy": userName.text,
// //       "emailId": email.text,
// //       "image": image.text,
// //       "institutionId": 32,
// //       "mobileCode": "",
// //       "mobileNo": contactNumber.text,
// //       "modifiedBy": userName.text,
// //       "name": studentName.text,
// //       "password": password.text,
// //       "status": "N",
// //       "userClassDetailsList": userClassDetailsList,
// //       "classId": semesterValue?.courseTreeId.toString() ?? "0",
// //       "userClassId": 0,
// //       "userId": "0",
// //       "userCode": userName.text,
// //       "userType": "STUDENT",
// //       "whatsappCode": "",
// //       "whatsappNo": whatsappNumber.text,
// //     };

// //     final response = await http.post(
// //       Uri.parse(apiUrl),
// //       headers: headers,
// //       body: jsonEncode(requestData),
// //     );

// //     if (response.statusCode == 200) {
// //       final responseData = json.decode(response.body);
// //       print('Response Code: ${responseData["code"]}');
// //       print('Response Message: ${responseData["message"]}');
// //       // Handle the API response here
// //     } else {
// //       print('Failed to save user data. Status Code: ${response.statusCode}');
// //     }
// //   } catch (e) {
// //     print('Error: $e');
// //   }
// // }