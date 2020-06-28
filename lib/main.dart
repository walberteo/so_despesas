import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_despesas/src/theme/theme.dart';
import 'package:so_despesas/src/ui/login/login.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        themeMode: ThemeMode.dark,
        darkTheme: MyAppTheme().themeData,
        defaultTransition: Transition.cupertino,
      ),
    );
