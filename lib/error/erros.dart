abstract class VerifyPaymentException implements Exception {
  final String message;

  VerifyPaymentException(this.message);
}

class FailOnVerifyPayment extends VerifyPaymentException {
  FailOnVerifyPayment(super.message);
}
