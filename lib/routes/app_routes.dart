import 'package:flutter/material.dart';
import 'package:triko_blog/presentation/home_screen/home_screen.dart';
import 'package:triko_blog/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:triko_blog/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:triko_blog/presentation/interests_screen/interests_screen.dart';
import 'package:triko_blog/presentation/search_topics_screen/search_topics_screen.dart';
import 'package:triko_blog/presentation/interests_topics_screen/interests_topics_screen.dart';
import 'package:triko_blog/presentation/interests_people_screen/interests_people_screen.dart';
import 'package:triko_blog/presentation/explore_screen/explore_screen.dart';
import 'package:triko_blog/presentation/blog_screen/blog_screen.dart';
import 'package:triko_blog/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:triko_blog/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:triko_blog/presentation/notifications_screen/notifications_screen.dart';
import 'package:triko_blog/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String interestsScreen = '/interests_screen';

  static const String searchTopicsScreen = '/search_topics_screen';

  static const String interestsTopicsScreen = '/interests_topics_screen';

  static const String interestsPeopleScreen = '/interests_people_screen';

  static const String exploreScreen = '/explore_screen';

  static const String blogScreen = '/blog_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        interestsScreen: InterestsScreen.builder,
        searchTopicsScreen: SearchTopicsScreen.builder,
        interestsTopicsScreen: InterestsTopicsScreen.builder,
        interestsPeopleScreen: InterestsPeopleScreen.builder,
        exploreScreen: ExploreScreen.builder,
        blogScreen: BlogScreen.builder,
        termsAndConditionsScreen: TermsAndConditionsScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
