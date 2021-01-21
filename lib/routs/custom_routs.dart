import 'package:al_madina/routs/routs_name.dart';
import 'package:al_madina/screens/Cart/cart.dart';
import 'package:al_madina/screens/Home/home.dart';
import 'package:al_madina/screens/account/accounts.dart';
import 'package:al_madina/screens/layout/layout.dart';
import 'package:al_madina/screens/login/login.dart';
import 'package:al_madina/screens/messages.dart/message.dart';
import 'package:al_madina/screens/signup/signup.dart';
import 'package:flutter/material.dart';

Route<dynamic> genrateRoute(RouteSettings settings) {
  print(settings.name);
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(Home());
    case LayoutRoute:
      return _getPageRoute(AppLayout());
    case LoginRoute:
      return _getPageRoute(LoginPage());
    case SignupRoute:
      return _getPageRoute(SignUp());
      case CartRoute:
      return _getPageRoute(Cart());
case MessageRoute:
      return _getPageRoute(Messages());
      case AccountRoute:
      return _getPageRoute(Account());
       default:
    return _getPageRoute(LoginPage());
  }
}

PageRoute _getPageRoute(Widget page) {
  return MaterialPageRoute(builder: (context) => page);
}
