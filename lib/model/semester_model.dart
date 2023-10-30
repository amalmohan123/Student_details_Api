// class SemesterModel {
//   final int courseTreeId;
//   final String courseType;
//   final String isDeleted;
//   final int courseTypesId;
//   final int priorityOrder;
//   final String course;
//   final int parentId;

//   SemesterModel({
//     required this.courseTreeId,
//     required this.courseType,
//     required this.isDeleted,
//     required this.courseTypesId,
//     required this.priorityOrder,
//     required this.course,
//     required this.parentId,
//   });

//   factory SemesterModel.fromJson(Map<String, dynamic> json) {
//     return SemesterModel(
//       courseTreeId: json['courseTreeId'],
//       courseType: json['courseType'],
//       isDeleted: json['isDeleted'],
//       courseTypesId: json['courseTypesId'],
//       priorityOrder: json['priorityOrder'],
//       course: json['course'],
//       parentId: json['parentId'],
//     );
//   }
// }






import 'dart:convert';
import 'package:http/http.dart' as http;

class SemesterModel {
  final int courseTreeId;
  final String courseType;
  final String isDeleted;
  final int courseTypesId;
  final int priorityOrder;
  final String course;
  final int parentId;

  SemesterModel({
    required this.courseTreeId,
    required this.courseType,
    required this.isDeleted,
    required this.courseTypesId,
    required this.priorityOrder,
    required this.course,
    required this.parentId,
  });

  factory SemesterModel.fromJson(Map<String, dynamic> json) {
    return SemesterModel(
      courseTreeId: json['courseTreeId'],
      courseType: json['courseType'],
      isDeleted: json['isDeleted'],
      courseTypesId: json['courseTypesId'],
      priorityOrder: json['priorityOrder'],
      course: json['course'],
      parentId: json['parentId'],
    );
  }
}

Future<List<SemesterModel>> fetchSemesterData(String academicYearId) async {
  const apiUrl = 'https://llabdemo.orell.com/api/masters/anonymous/getAllClassList';
  final headers = {'Content-Type': 'application/json'};

  final requestData = {
    "institutionId": 32,
    "academicYearId": academicYearId,
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(requestData),
  );

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);
    final List<SemesterModel> semesterList = responseData
        .map((data) => SemesterModel.fromJson(data))
        .toList();
    return semesterList;
  } else {
    throw Exception('Failed to load data: ${response.statusCode}');
  }
}

// Usage example:
Future<void> fetchDataAndPrint() async {
  try {
    final academicYearId = "93"; // Replace with the actual academic year ID
    final semesterData = await fetchSemesterData(academicYearId);
    for (final semester in semesterData) {
      print(semester.courseType);
      // You can access other properties here
    }
  } catch (e) {
    print('Error: $e');
  }
}

    