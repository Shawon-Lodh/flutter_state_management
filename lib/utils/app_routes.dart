import '../modules/pokemon_info/views/pokemon_info_screen.dart';
import '../modules/splash/views/splash_screen.dart';
import 'package:flutter/material.dart';

import '../modules/dashboard/views/dashboard_screen.dart';


enum AppRoutes {
  dashboard,
  pokemonInfo,
  splash,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {

      case AppRoutes.pokemonInfo:
        return const PokemonInfoScreen();
     case AppRoutes.splash:
        return const SplashScreen();
      case AppRoutes.dashboard:
        return const DashboardScreen();
    }
  }
}


