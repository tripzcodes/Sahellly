import '../controller/signup_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupThreeScreen.
///
/// This class ensures that the SignupThreeController is created when the
/// SignupThreeScreen is first loaded.
class SignupThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupThreeController());
  }
}
