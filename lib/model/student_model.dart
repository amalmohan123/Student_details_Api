
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
