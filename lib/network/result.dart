import 'dart:convert';

class Result<T> {
  bool isError;
  int? errorCode;
  String? errorMessage;

  T? body;

  Result({
    this.isError = false,
    this.errorCode,
    this.errorMessage
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  factory Result.fromMap(Map<String, dynamic> json) => Result(
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
  );
}