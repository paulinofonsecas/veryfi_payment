import 'dart:io';

import 'package:dio/dio.dart';
import 'package:verify_payment/error/erros.dart';
import 'package:verify_payment/models/response_model.dart';

Future<VerifyPaymentResponse> verifyPayment(
  File file, [
  Dio? dioParm,
]) async {
  final dio = dioParm ?? Dio();

  // Altera o origin para se fazer passar pela verify_payment
  String origin = "https://pay.ideiasinovadoras.ao";
  dio.options.headers = {"Origin": origin};

  // prepara o documento para ser enviado
  FormData formData = FormData.fromMap({
    "recibo": await MultipartFile.fromFile(file.path),
  });

  try {
    final result = await dio.post(
      'https://pay.ideiasinovadoras.ao/query.php',
      data: formData,
    );

    // Retorna sucesso caso o comprovante seja autentico
    if (result.data['STATUS'] != null && result.data['STATUS'] == 200 ||
        result.data['STATUS'] == 423) {
      return VerifyPaymentSuccess.fromMap(result.data);
    }

    final errorCodeList = [403, 404, 406, 415];
    if (result.data['STATUS'] != null && statusIsError(errorCodeList, result)) {
      return VerifyPaymentError(
        status: result.data['STATUS'] as int,
        log: result.data['LOG'] as String,
      );
    }

    // Erro referente a erros desconhecidos
    return VerifyPaymentError(
      status: 9999,
      log: 'Ocorreu um erro desconhecido ao analisar o comprovante.',
    );
  } catch (e) {
    throw FailOnVerifyPayment(
        'Erro inesperado ao verificar o comprovante. \nErro: ${e.toString()}');
  }
}

bool statusIsError(List<int> errorCode, Response<dynamic> result) =>
    (errorCode.contains(result.data['STATUS']));
