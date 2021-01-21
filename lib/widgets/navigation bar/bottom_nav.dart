import 'package:al_madina/components/enumerators.dart';
import 'package:al_madina/providers/app_provider.dart';
import 'package:al_madina/routs/routs_name.dart';
import 'package:al_madina/widgets/navigation%20bar/navbar_iterms.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
              blurRadius: 17,
              color: Colors.grey.withOpacity(.2),
              offset: Offset(
                3,
                5,
              ))
        ],
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.grey[300]],
        ),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavItems(
              icon: Icons.home,
              title: "Home",
              route: HomeRoute,
              active: appProvider.currentPage == DisplayPage.HOME,
              page: DisplayPage.HOME,
            ),
            NavItems(
              icon: Icons.shopping_cart,
              title: "Cart",
              route: CartRoute,
              active: appProvider.currentPage == DisplayPage.CART,
              page: DisplayPage.CART,
            ),
            NavItems(
              icon: Icons.message,
              title: "Messages",
              route: MessageRoute,
              active: appProvider.currentPage == DisplayPage.MESSAGE,
              page: DisplayPage.MESSAGE,
            ),
            NavItems(
              icon: Icons.account_balance,
              title: "Account",
              route: AccountRoute,
              active: appProvider.currentPage == DisplayPage.ACCOUNT,
              page: DisplayPage.ACCOUNT,
            ),
          ],
        ),
      ),
    );
  }
}
