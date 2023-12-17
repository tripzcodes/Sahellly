import '../controller/iphone_13_mini_five_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone13MiniFiveContainerScreen.
///
/// This class ensures that the Iphone13MiniFiveContainerController is created when the
/// Iphone13MiniFiveContainerScreen is first loaded.
class Iphone13MiniFiveContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone13MiniFiveContainerController());
  }
}
