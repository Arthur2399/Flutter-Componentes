import 'package:flutter/material.dart';
import 'package:componentes/models/models.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.access_time_outlined),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.add_box),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.home_work_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.airplay),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animación',
        screen: const AnimatedScreen(),
        icon: Icons.add_photo_alternate_sharp),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.text_fields_sharp),
    MenuOption(
        route: 'slider',
        name: 'Sliders && Checks',
        screen: const SliderScreen(),
        icon: Icons.sledding),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
