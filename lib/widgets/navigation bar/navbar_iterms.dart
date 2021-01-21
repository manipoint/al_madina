import 'package:al_madina/components/enumerators.dart';
import 'package:al_madina/components/my_text.dart';
import 'package:al_madina/locator.dart';
import 'package:al_madina/providers/app_provider.dart';
import 'package:al_madina/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class NavItems extends StatelessWidget {
  final bool active;
  final String title;
  final IconData icon;
  final DisplayPage page;
  final String route;

  const NavItems(
      {Key key, this.active, this.title, this.icon, this.page, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return InkWell(
      onTap: () {
        appProvider.changeCurrentPage(page);
        locator<NavigationService>().navigateTo(route);
      },
      //splashColor: active ? Colors.green.shade300 : null ,mouseCursor: MouseCursor.defer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: active ?Colors.green:null,size: active ? 26:20,),
          MyText(
            text: title,
            color:  active ?Colors.blueAccent: Colors.black,
            size: active ? 18 : 14,
          )
        ],
      ),
    );
  }
}
