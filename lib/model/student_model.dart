// class StudenModel {
//   final String academicYearId;
//   final String address;
//   final String createdBy;
//   final String emailId;
//   final String image;
//   final int institutionId;
//   final String mobileCode;
//   final String mobileNo;
//   final String modifiedBy;
//   final String name;
//   final String password;
//   final String status;
//   final String whatsappNo;

//   StudenModel({
//     required this.academicYearId,
//     required this.address,
//     required this.createdBy,
//     required this.emailId,
//     required this.image,
//     required this.institutionId,
//     required this.mobileCode,
//     required this.mobileNo,
//     required this.modifiedBy,
//     required this.name,
//     required this.password,
//     required this.status,
//     required this.whatsappNo,
//   });

//   factory StudenModel.fromJson(Map<String, dynamic> json) {
//     return StudenModel(
//       image: json['image'],
//       emailId: json['emailId'],
//       academicYearId: json['academicYearId'],
//       address: json['address'],
//       createdBy: json['createdBy'],
//       institutionId: json['institutionId'],
//       mobileCode: json['mobileCode'],
//       mobileNo: json['mobileNo'],
//       modifiedBy: json['modifiedBy'],
//       name: json['name'],
//       password: json['password'],
//       status: json['status'],
//       whatsappNo: json['whatsappNo'],
//     );
//   }
// }

// To parse this JSON data, do

//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// StudentModel welcomeFromJson(String str) => StudentModel.fromJson(json.decode(str));

// String welcomeToJson(StudentModel data) => json.encode(data.toJson());

// class StudentModel {
//     String academicYearId;
//     String address;
//     String createdBy;
//     String emailId;
//     String image;
//     int institutionId;
//     String mobileCode;
//     String mobileNo;
//     String name;
//     String password;
//     String status;
//     String classId;
//     int userClassId;
//     String userId;
//     String userCode;
//     String userType;
//     String whatsappNo;

//    StudentModel({
//         required this.academicYearId,
//         required this.address,
//         required this.createdBy,
//         required this.emailId,
//         required this.image,
//         required this.institutionId,
//         required this.mobileCode,
//         required this.mobileNo,
//         required this.name,
//         required this.password,
//         required this.status,
//         required this.classId,
//         required this.userClassId,
//         required this.userId,
//         required this.userCode,
//         required this.userType,
//         required this.whatsappNo,
//     });

//     factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
//         academicYearId: json["academicYearId"],
//         address: json["address"],
//         createdBy: json["createdBy"],
//         emailId: json["emailId"],
//         image: json["image"],
//         institutionId: json["institutionId"],
//         mobileCode: json["mobileCode"],
//         mobileNo: json["mobileNo"],
//         name: json["name"],
//         password: json["password"],
//         status: json["status"],
//         classId: json["classId"],
//         userClassId: json["userClassId"],
//         userId: json["userId"],
//         userCode: json["userCode"],
//         userType: json["userType"],
//         whatsappNo: json["whatsappNo"],
//     );

//     Map<String, dynamic> toJson() => {
//         "academicYearId": academicYearId,
//         "address": address,
//         "createdBy": createdBy,
//         "emailId": emailId,
//         "image": image,
//         "institutionId": institutionId,
//         "mobileCode": mobileCode,
//         "mobileNo": mobileNo,
//         "name": name,
//         "password": password,
//         "status": status,
//         "classId": classId,
//         "userClassId": userClassId,
//         "userId": userId,
//         "userCode": userCode,
//         "userType": userType,
//         "whatsappNo": whatsappNo,
//     };
// }

import 'package:flutter/src/widgets/editable_text.dart';

class UserModel {
  final String academicYearId;
  final String address;
  final String createdBy;
  final String emailId;
  final String image;
  final String mobileNo;
  final String name;
  final String password;
  final String whatsappNo;

  UserModel({
    required this.academicYearId,
    required this.address,
    required this.createdBy,
    required this.emailId,
    required this.image,
    required this.mobileNo,
    required this.name,
    required this.password,
    required this.whatsappNo,
    
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      academicYearId: json['academicYearId'],
      address: json['address'],
      createdBy: json['createdBy'],
      emailId: json['emailId'],
      image: json['image'],
      mobileNo: json['mobileNo'],
      name: json['name'],
      password: json['password'],
      whatsappNo: json['whatsappNo'], 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'academicYearId': academicYearId,
      'address': address,
      'createdBy': createdBy,
      'emailId': emailId,
      'image': image,
      'mobileNo': mobileNo,
      'name': name,
      'password': password,
      'whatsappNo': whatsappNo,
    };
  }
}

class UserClassDetails {
  final int userClassId;
  final String userId;
  final String classId;

  UserClassDetails({
    required this.userClassId,
    required this.userId,
    required this.classId,
  });

  factory UserClassDetails.fromJson(Map<String, dynamic> json) {
    return UserClassDetails(
      userClassId: json['userClassId'],
      userId: json['userId'],
      classId: json['classId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userClassId': userClassId,
      'userId': userId,
      'classId': classId,
    };
  }
}
