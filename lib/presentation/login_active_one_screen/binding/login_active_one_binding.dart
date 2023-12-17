import '../controller/login_active_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginActiveOneScreen.
///
/// This class ensures that the LoginActiveOneController is created when the
/// LoginActiveOneScreen is first loaded.
class LoginActiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginActiveOneController());
  }
}
