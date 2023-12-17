import 'controller/iphone_13_mini_five_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/iphone_13_mini_five_page/iphone_13_mini_five_page.dart';
import 'package:sahelly_prototype/widgets/custom_bottom_bar.dart';

class Iphone13MiniFiveContainerScreen
    extends GetWidget<Iphone13MiniFiveContainerController> {
  const Iphone13MiniFiveContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.iphone13MiniFivePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Materialsymbolswork:
        return "/";
      case BottomBarEnum.Iconamoonprofilefill:
        return AppRoutes.iphone13MiniFivePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone13MiniFivePage:
        return Iphone13MiniFivePage();
      default:
        return DefaultWidget();
    }
  }
}
