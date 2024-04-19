import 'dart:io';

import 'package:verify_payment/verify_payment.dart' as verify_payment;

void main(List<String> arguments) async {
  final fileName = 'comprovativo_20240416_205409_7563966245_signed.pdf';
  final file = File(fileName);

  final response = await verify_payment.verifyPayment(file);

  print(response);
}
