import 'package:get/get.dart';
import 'package:semi11/screens/authentication/verify_code/verify_code_controller.dart';

class VerifyCodeBinding implements Bindings {
  VerifyCodeBinding({
    required this.phoneNumber,
  });
  String? phoneNumber;
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeController>(() => VerifyCodeController(
          phoneNumber: phoneNumber,
        ));
  }
}
