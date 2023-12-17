import '../controller/signup_eight_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupEightTabContainerScreen.
///
/// This class ensures that the SignupEightTabContainerController is created when the
/// SignupEightTabContainerScreen is first loaded.
class SignupEightTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupEightTabContainerController());
  }
}
