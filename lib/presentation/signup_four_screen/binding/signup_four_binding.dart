import '../controller/signup_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupFourScreen.
///
/// This class ensures that the SignupFourController is created when the
/// SignupFourScreen is first loaded.
class SignupFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupFourController());
  }
}
