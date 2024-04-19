import 'dart:io';

import 'package:verify_payment/verify_payment.dart' as verify_payment;
import 'package:verify_payment/models/response_model.dart';
import 'package:test/test.dart';

void main() {
  test('verify doc', () async {
    final fileName = 'test/docs/comprovativo_20240416_205409_7563966245_signed.pdf';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    expect(response, isA<VerifyPaymentSuccess>());
    expect((response as VerifyPaymentSuccess).status, 423);
  });

  test('Erro, documento que nao e comprovante', () async {
    final fileName = 'test/docs/PROPOSTA LOJA CATABOLA 01.pdf';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    expect(response, isA<VerifyPaymentError>());
    expect((response as VerifyPaymentError).status, 406);
  });

  test('Erro, documento que nao e pdf', () async {
    final fileName = 'test/docs/Roteiro do Curso de Algoritmos (6 Semanas).docx';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    expect(response, isA<VerifyPaymentError>());
    expect((response as VerifyPaymentError).status, 415);
  });
}
