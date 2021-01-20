import 'package:al_madina/components/my_text.dart';
import 'package:al_madina/loading/loading.dart';
import 'package:al_madina/providers/auth.dart';
import 'package:al_madina/routs/routs_name.dart';
import 'package:al_madina/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue, Colors.indigo.shade600])),
      child: authProvider.status == Status.Authenticating
          ? Loading()
          : Scaffold(
              body: Center(
                child: Container(
                 // color: red,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.lightGreen,
                              offset: Offset(0, 3),
                              blurRadius: 10)
                        ]),
                    height: 420,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "REGISTRATION",
                          size: 22,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[200]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                controller: authProvider.name,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    icon: Icon(Icons.person_outline)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[200]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                controller: authProvider.email,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'email',
                                    icon: Icon(Icons.email_outlined)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                controller: authProvider.password,
                                
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    icon: Icon(Icons.lock_open)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.indigo,borderRadius: BorderRadius.circular(12)),
                            child: FlatButton(
                              onPressed: () async {
                                if (!await authProvider.signUp()) {
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Registration failed!")));
                                  return;
                                }
                                authProvider.clearController();
                                locator<NavigationService>()
                                    .globelNavigatorTo(LayoutRoute, context);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyText(
                                      text: "REGISTER",
                                      size: 20,
                                      color: Colors.white,
                                      weight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                text: "Have an account? ",
                                size: 18,
                                color: Colors.white,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    locator<NavigationService>()
                                        .globelNavigatorTo(LoginRoute, context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:12.0),
                                    child: MyText(
                                      text: "Sign in here.. ",
                                      size: 18,
                                      color: Colors.indigo,
                                      weight: FontWeight.w600,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}