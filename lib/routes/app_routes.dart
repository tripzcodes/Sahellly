import 'package:sahelly_prototype/presentation/signup_eight_tab_container_screen/signup_eight_tab_container_screen.dart';
import 'package:sahelly_prototype/presentation/signup_eight_tab_container_screen/binding/signup_eight_tab_container_binding.dart';
import 'package:sahelly_prototype/presentation/iphone_13_mini_five_container_screen/iphone_13_mini_five_container_screen.dart';
import 'package:sahelly_prototype/presentation/iphone_13_mini_five_container_screen/binding/iphone_13_mini_five_container_binding.dart';
import 'package:sahelly_prototype/presentation/login_active_one_screen/login_active_one_screen.dart';
import 'package:sahelly_prototype/presentation/login_active_one_screen/binding/login_active_one_binding.dart';
import 'package:sahelly_prototype/presentation/login_active_screen/login_active_screen.dart';
import 'package:sahelly_prototype/presentation/login_active_screen/binding/login_active_binding.dart';
import 'package:sahelly_prototype/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:sahelly_prototype/presentation/signup_three_screen/binding/signup_three_binding.dart';
import 'package:sahelly_prototype/presentation/signup_four_screen/signup_four_screen.dart';
import 'package:sahelly_prototype/presentation/signup_four_screen/binding/signup_four_binding.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_tab_container_screen/signup_unactive_tab_container_screen.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_tab_container_screen/binding/signup_unactive_tab_container_binding.dart';
import 'package:sahelly_prototype/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:sahelly_prototype/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signupSixPage = '/signup_six_page';

  static const String signupSevenPage = '/signup_seven_page';

  static const String signupEightPage = '/signup_eight_page';

  static const String signupEightTabContainerScreen =
      '/signup_eight_tab_container_screen';

  static const String signupNinePage = '/signup_nine_page';

  static const String signupFivePage = '/signup_five_page';

  static const String iphone13MiniFivePage = '/iphone_13_mini_five_page';

  static const String iphone13MiniFiveContainerScreen =
      '/iphone_13_mini_five_container_screen';

  static const String loginActiveOneScreen = '/login_active_one_screen';

  static const String loginActiveScreen = '/login_active_screen';

  static const String signupOnePage = '/signup_one_page';

  static const String signupTwoPage = '/signup_two_page';

  static const String signupThreeScreen = '/signup_three_screen';

  static const String signupFourScreen = '/signup_four_screen';

  static const String signupUnactivePage = '/signup_unactive_page';

  static const String signupUnactiveTabContainerScreen =
      '/signup_unactive_tab_container_screen';

  static const String signupUnactiveOnePage = '/signup_unactive_one_page';

  static const String signupUnactiveTwoPage = '/signup_unactive_two_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signupEightTabContainerScreen,
      page: () => SignupEightTabContainerScreen(),
      bindings: [
        SignupEightTabContainerBinding(),
      ],
    ),
    GetPage(
      name: iphone13MiniFiveContainerScreen,
      page: () => Iphone13MiniFiveContainerScreen(),
      bindings: [
        Iphone13MiniFiveContainerBinding(),
      ],
    ),
    GetPage(
      name: loginActiveOneScreen,
      page: () => LoginActiveOneScreen(),
      bindings: [
        LoginActiveOneBinding(),
      ],
    ),
    GetPage(
      name: loginActiveScreen,
      page: () => LoginActiveScreen(),
      bindings: [
        LoginActiveBinding(),
      ],
    ),
    GetPage(
      name: signupThreeScreen,
      page: () => SignupThreeScreen(),
      bindings: [
        SignupThreeBinding(),
      ],
    ),
    GetPage(
      name: signupFourScreen,
      page: () => SignupFourScreen(),
      bindings: [
        SignupFourBinding(),
      ],
    ),
    GetPage(
      name: signupUnactiveTabContainerScreen,
      page: () => SignupUnactiveTabContainerScreen(),
      bindings: [
        SignupUnactiveTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginActiveScreen(),
      bindings: [
        LoginActiveBinding(),
      ],
    )
  ];
}
