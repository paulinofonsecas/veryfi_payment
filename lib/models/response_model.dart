// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

abstract class VerifyPaymentResponse {}

class VerifyPaymentSuccess extends VerifyPaymentResponse {
  final String aplicativo;
  final int status;
  final String log;

  VerifyPaymentSuccess({
    required this.aplicativo,
    required this.status,
    required this.log,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aplicativo': aplicativo,
      'status': status,
      'log': log,
    };
  }

  factory VerifyPaymentSuccess.fromMap(Map<String, dynamic> map) {
    return VerifyPaymentSuccess(
      aplicativo: map['APLICATIVO'] as String,
      status: map['STATUS'] as int,
      log: map['LOG'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPaymentSuccess.fromJson(String source) =>
      VerifyPaymentSuccess.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'VerifyPaymentSuccess(aplicativo: $aplicativo, status: $status, log: $log)';
}

class VerifyPaymentError extends VerifyPaymentResponse {
  final int status;
  final String log;

  VerifyPaymentError({
    required this.status,
    required this.log,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'log': log,
    };
  }

  factory VerifyPaymentError.fromMap(Map<String, dynamic> map) {
    return VerifyPaymentError(
      status: map['STATUS'] as int,
      log: map['LOG'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPaymentError.fromJson(String source) =>
      VerifyPaymentError.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VerifyPaymentError(aplicativo: status: $status, log: $log)';
}
