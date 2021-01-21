
import 'package:al_madina/routs/custom_routs.dart';
import 'package:al_madina/routs/routs_name.dart';
import 'package:al_madina/services/navigation_services.dart';
import 'package:al_madina/widgets/navigation%20bar/bottom_nav.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: Row(
        children: [
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:12.0),
        child: CustomNavBar(),
      ),
    );
  }
}
