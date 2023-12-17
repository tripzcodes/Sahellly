import '../controller/signup_unactive_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupUnactiveTabContainerScreen.
///
/// This class ensures that the SignupUnactiveTabContainerController is created when the
/// SignupUnactiveTabContainerScreen is first loaded.
class SignupUnactiveTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupUnactiveTabContainerController());
  }
}
