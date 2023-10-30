class AcadamicModel {
  final int academicYearId;
  final String academicYear;
  final String academicStart;
  final String academicEnd;
  final int? institutionId;
  final String  modifiedDate;
  final String? pageNo;
  final int? rowCount;
  final int? totalCount;
  final String? createdBy;
  final String? modifiedBy;
  final int? academicId;
  final bool? isDeleted;
  final String? logo;
  final String? institutionName;

  AcadamicModel(
      {required this.academicYearId,
      required this.academicYear,
      required this.academicStart,
      required this.academicEnd,
      required this.institutionId,
      required this.modifiedDate,
      required this.pageNo,
      required this.rowCount,
      required this.totalCount,
      required this.createdBy,
      required this.modifiedBy,
      required this.academicId,
      required this.isDeleted,
      required this.logo,
      required this.institutionName});

  factory AcadamicModel.fromJson(Map<String, dynamic> json) {
    return AcadamicModel(
        academicYearId: json['academicYearId'],
        academicYear: json['academicYear'],
        academicStart: json['academicStart'],
        academicEnd: json['academicEnd'],
        institutionId: json['institutionId'],
        modifiedDate: json['modifiedDate'],
        pageNo: json['pageNo'],
        rowCount: json['rowCount'],
        totalCount: json['totalCount'],
        createdBy: json['createdBy'],
        modifiedBy: json['modifiedBy'],
        academicId: json['academicId'],
        isDeleted: json['isDeleted'],
        logo: json['logo'],
        institutionName: json['institutionName']); 
  }
}

		