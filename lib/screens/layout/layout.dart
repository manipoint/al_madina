
import 'package:al_madina/routs/custom_routs.dart';
import 'package:al_madina/routs/routs_name.dart';
import 'package:al_madina/services/navigation_services.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class AppLayout extends StatelessWidget {
  //GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
     GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: Row(
        children: [
           //SideMenu(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: genrateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
