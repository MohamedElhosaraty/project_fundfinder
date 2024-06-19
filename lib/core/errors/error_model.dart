
class ErrorModel {
  final bool? status;
  final dynamic message;
  final dynamic data;

  ErrorModel({
    this.status,
    this.message,
    this.data,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
    status: json["status"],
    message: json["message"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data,
  };
}

// class ErrorModel {
//   final int status;
//   final String errorMessage;
//
//   ErrorModel({required this.status, required this.errorMessage});
//
//   factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
//     return ErrorModel(
//         status: jsonData[ApiKey.status], errorMessage: jsonData[ApiKey.message]);
//   }
// }
