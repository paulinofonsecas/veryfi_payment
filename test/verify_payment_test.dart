import 'dart:io';

import 'package:test/test.dart';
import 'package:verify_payment/models/response_model.dart';
import 'package:verify_payment/verify_payment.dart' as verify_payment;

void main() {
  test('verify doc', () async {
    final fileName = 'test/docs/DOC-20240603-WA0007..pdf';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    print(response);

    expect(response, isA<VerifyPaymentSuccess>());
    expect((response as VerifyPaymentSuccess).dINHEIRO, greaterThan(0));
    expect((response).sTATUS, 200);
  });

  test('Erro, documento que nao e comprovante', () async {
    final fileName = 'test/docs/PROPOSTA LOJA CATABOLA 01.pdf';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    expect(response, isA<VerifyPaymentError>());
    expect((response as VerifyPaymentError).status, 422);
  });

  test('Erro, documento que nao e pdf', () async {
    final fileName =
        'test/docs/Roteiro do Curso de Algoritmos (6 Semanas).docx';
    final file = File(fileName);

    final response = await verify_payment.verifyPayment(file);

    expect(response, isA<VerifyPaymentError>());
    expect((response as VerifyPaymentError).status, 415);
  });
}
