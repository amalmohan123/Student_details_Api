import 'dart:convert';
import 'package:student_details/model/semester_model.dart';
import 'package:student_details/service/urls.dart';
import 'package:http/http.dart' as http;
import 'package:student_details/model/acadamic_model.dart';


class DbFunctions {
  Future<List<AcadamicModel>> getYear() async {
    try {
      final response = await http.get(
        Uri.parse("${Env.urlPrefix}/api/masters/anonymous/getAcademicYear/32"),
      );

      if (response.statusCode == 200) {
        final items = json.decode(response.body).cast<Map<String, dynamic>>();
        List<AcadamicModel> employees = items.map<AcadamicModel>((json) {
          return AcadamicModel.fromJson(json);
        }).toList();
        return employees;
      } else {
        // Handle non-200 status codes here, if needed.
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occurred during the request or decoding.
      print('Error in getNotes: $e');
      // Return an empty list in case of an error.
      return <AcadamicModel>[];
    }
  }




  Future<List<SemesterModel>> getclass() async {
    try {
      final response = await http.post(
        Uri.parse("${Env.urlPrefix}/api/masters/anonymous/getAllClassList"),
        headers: {
          'Content-Type': 'application/json', // Add any headers you need here
        },
        body: json.encode({
          // Add any POST data you need here
        }),
      );

      if (response.statusCode == 200) {
        final items = json.decode(response.body).cast<Map<String, dynamic>>();
        List<SemesterModel> employees = items.map<SemesterModel>((json) {
          return SemesterModel.fromJson(json);
        }).toList();
        return employees;
      } else {
        // Handle non-200 status codes here, if needed.
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occurred during the request or decoding.
      print('Error in getclass: $e');
      // Return an empty list in case of an error.
      return <SemesterModel>[];
    }
  }




   Future<List<SemesterModel>> save() async {
    try {
      final response = await http.post(
        Uri.parse("${Env.urlPrefix}/api/masters/anonymous/getAllClassList"),
        headers: {
          'Content-Type': 'application/json', // Add any headers you need here
        },
        body: json.encode({
          // Add any POST data you need here
        }),
      );

      if (response.statusCode == 200) {
        final items = json.decode(response.body).cast<Map<String, dynamic>>();
        List<SemesterModel> employees = items.map<SemesterModel>((json) {
          return SemesterModel.fromJson(json);
        }).toList();
        return employees;
      } else {
        // Handle non-200 status codes here, if needed.
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occurred during the request or decoding.
      print('Error in getclass: $e');
      // Return an empty list in case of an error.
      return <SemesterModel>[];
    }
  }




//     Future submitdata(String academicYearId, String name,String emailId,String address,String whatsappNo,String createdBy,String mobileNo,String userId,String password) async {
      
//     dynamic response = await http.post(
//         Uri.https("llabdemo.orell.com", "/api/userService/anonymous/saveUser"),
//         body: {"academicYearId": academicYearId,"name":name,"emailId":emailId,"address":address,"whatsappNo":whatsappNo,"createdBy":createdBy,"mobileNo":mobileNo,"userId":userId,"password":password});
//          print(response.body);

// if(response.statusCode == 201){
//   String responseString =response.body;
//   welcomeFromJson(responseString);
  

// }
// else return null;
// }



}




















// Future<List<StudenModel>> saveData() async {
//     try {
//       final response = await http.post(
//         Uri.parse("${Env.urlPrefix}/api/userService/anonymous/saveUser"),
//       );

//       if (response.statusCode == 200) {
//         final items = json.decode(response.body).cast<Map<String, dynamic>>();
//         List<StudenModel> employees = items.map<StudenModel>((json) {
//           return StudenModel.fromJson(json);
//         }).toList();
//         return employees;
//       } else {
//         // Handle non-200 status codes here, if needed.
//         throw Exception('Failed to load data: ${response.statusCode}');
//       }
//     } catch (e) {
//       // Handle any exceptions that occurred during the request or decoding.
//       print('Error in getNotes: $e');
//       // Return an empty list in case of an error.
//       return <StudenModel>[];
//     }
//   }