import 'package:al_madina/components/enumerators.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  DisplayPage currentPage;

  AppProvider.init() {
    changeCurrentPage(DisplayPage.HOME);
  }

  void changeCurrentPage(DisplayPage page) {
    currentPage = page;
    notifyListeners();
  }

}