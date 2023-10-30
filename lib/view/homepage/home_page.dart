
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:student_details/helpers/colors.dart';
import 'package:student_details/model/semester_model.dart';
import 'package:student_details/model/acadamic_model.dart';
import 'package:student_details/model/student_model.dart';
import 'package:student_details/service/data_base.dart';
import 'package:student_details/service/urls.dart';
import 'package:http/http.dart' as http;
import 'package:student_details/view/widgets/student_login_container.dart';
import 'package:student_details/view/widgets/address.dart';
import 'package:student_details/view/widgets/confirm_password.dart';
import 'package:student_details/view/widgets/contact_number.dart';
import 'package:student_details/view/widgets/email.dart';
import 'package:student_details/view/widgets/guardian_name.dart';
import 'package:student_details/view/widgets/password.dart';
import 'package:student_details/view/widgets/student_name.dart';
import 'package:student_details/view/widgets/username.dart';
import 'package:student_details/view/widgets/whatsapp_number.dart';

TextEditingController academicYearController = TextEditingController();

TextEditingController studentNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController semesterController = TextEditingController();
TextEditingController whatsappNumberController = TextEditingController();
TextEditingController imageController = TextEditingController();
TextEditingController guardianNameController = TextEditingController();
TextEditingController contactNumberController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

AcadamicModel? dropdownValue;
SemesterModel? semesterValue;

final formKey = GlobalKey<FormState>();

late Future<List<AcadamicModel>> acadamicList;
late Future<List<SemesterModel>> semesterList;

List<SemesterModel> semesterData = [];

class _HomePageState extends State<HomePage> {



Future<void> postData(UserModel userModel) async {
    try {
      final response = await http.post(
        Uri.parse("${Env.urlPrefix}/api/userService/anonymous/saveUser"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(userModel.toJson()),
      );

      if (response.statusCode == 200) {
        // Request was successful, handle the response as needed
        // For example, you can display a success message to the user.
        print('User data sent successfully.');
      } else {
        // Handle non-200 status codes here
        print('Failed to send user data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occurred during the request
      print('Error in postData: $e');
    }
  }



  @override
  void initState() {
    super.initState();

    acadamicList = DbFunctions().getYear();
    semesterList = DbFunctions().getclass();
    fetchDataAndPrint();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.deepPurple,
        title: const Center(
          child: Text(
            'Students Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ConstantColors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(25),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: ConstantColors.cyan,
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    right: 15,
                    child: CircleAvatar(
                      radius: 20,
                      child:
                          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    FutureBuilder<List<AcadamicModel>>(
                      future: acadamicList,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return const Text('No academic years available');
                        } else {
                          final academicYears = snapshot.data;

                          return DropdownButtonFormField<AcadamicModel>(
                            hint: const Text('Academic Year'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstantColors.white,
                                  width: 2,
                                ),
                              ),
                              filled: true,
                              fillColor:
                                  ConstantColors.feildColor,
                            ),
                            value: dropdownValue,
                            onChanged: (AcadamicModel? newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: academicYears!.map((AcadamicModel value) {
                              return DropdownMenuItem<AcadamicModel>(
                                value: value,
                                child: Text(
                                  value.academicYear,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 25),
                    const StudentName(),
                    const SizedBox(height: 25),
                    const Email(),
                    const SizedBox(height: 25),
                    const Address(),
                    const SizedBox(height: 25),
                    FutureBuilder<List<SemesterModel>>(
                      future: semesterList,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return const Text('semester/class not available');
                        } else {
                          final courseType = snapshot.data;

                          return DropdownButtonFormField<SemesterModel>(
                            hint: const Text('Semester/Class'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstantColors.white,
                                  width: 2,
                                ),
                              ),
                              filled: true,
                              fillColor:
                                ConstantColors.feildColor,
                            ),
                            value: semesterValue,
                            onChanged: (SemesterModel? newValue) {
                              setState(() {
                                semesterValue = newValue;
                              });
                            },
                            items: courseType!.map((SemesterModel value) {
                              return DropdownMenuItem<SemesterModel>(
                                value: value,
                                child: Text(
                                  value.courseType,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 25),
                    const WhatsappNumber(),
                    const SizedBox(height: 25),
                    const GuardianName(),
                    const SizedBox(height: 25),
                    const ContactNumber(),
                  ],
                ),
              ),
              const StudentLoginContainer(),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Username(),
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Password(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: ConfirmPassword(),
              ),
              // const SubmitButton(),
              ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
        minimumSize: MaterialStatePropertyAll(
          Size(125, 48),
        ),
      ),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          final UserModel userModel = UserModel(
            academicYearId: academicYearController.text,
            address: addressController.text,
            createdBy: guardianNameController.text,
            emailId: emailController.text,
            image: imageController.text,
            mobileNo: contactNumberController.text,
            name: studentNameController.text,
            password: passwordController.text,
            whatsappNo: whatsappNumberController.text,
          );
      postData(userModel);
  
        }
      },
      child: const Text(
        'Submit',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}


