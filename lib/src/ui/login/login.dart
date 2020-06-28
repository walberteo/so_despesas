import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: Get.mediaQuery.size.height * .55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/citySky.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: Center(
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Get.theme.primaryColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Só',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    // color: Get.theme.accentColor,
                                  ),
                                ),
                                Text(
                                  'Despesas :(',
                                  style: GoogleFonts.caveat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    // color: Get.theme.accentColor,
                                  ),
                                ),
                                SizedBox(height: 10)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.mediaQuery.size.height * .45 - 80),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      margin: EdgeInsets.all(20),
                      borderOnForeground: true,
                      elevation: 115,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: Get.theme.primaryColor,
                        height: Get.mediaQuery.size.height * .55 + 40,
                        child: SingleChildScrollView(
                          child: Form(
                            child: Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 12),
                                  Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                    height: 45,
                                    child: Center(
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          hintText: 'E-mail',
                                          contentPadding: EdgeInsets.all(4),
                                          prefixIcon:
                                              Icon(Icons.person_outline),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Senha',
                                        contentPadding: EdgeInsets.all(4),
                                        prefixIcon: Icon(Icons.lock_outline),
                                        suffixIcon: IconButton(
                                            icon: Icon(Icons.visibility),
                                            onPressed: () {}),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 0,
                                    onPressed: () {},
                                    child: Text('Login'),
                                  ),
                                  SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 50,
                                        color: Colors.white30,
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: Get.theme.accentColor,
                                          ),
                                        ),
                                        child: Center(child: Text('Ou')),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 1,
                                        width: 50,
                                        color: Colors.white30,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 0,
                                    onPressed: () {},
                                    child: Text('Entrar com Google'),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'walber.dev © ${DateTime.now().year}',
                                    style: TextStyle(
                                        color: Get.textTheme.headline6.color
                                            .withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
