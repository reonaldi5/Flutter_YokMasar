
import 'package:flutter/material.dart';
import 'package:yokmasar/pages/home/daftar_toko.dart';
import 'package:yokmasar/pages/home/edit_profile_page.dart';
import 'package:yokmasar/pages/home/main_page.dart';
import 'package:yokmasar/pages/home/product_page.dart';
import 'package:yokmasar/pages/home/product_page2.dart';
import 'package:yokmasar/pages/home/product_page3.dart';
import 'package:yokmasar/pages/home/product_page4.dart';
import 'package:yokmasar/pages/home/product_page5.dart';
import 'package:yokmasar/pages/home/product_page6.dart';
import 'package:yokmasar/pages/sign_in_page.dart';
import 'package:yokmasar/pages/sign_up_page.dart';
import 'package:yokmasar/pages/splash_page.dart';
import 'package:yokmasar/providers/auth_provider.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/product2': (context) => ProductPage2(),
          '/product3': (context) => ProductPage3(),
          '/product4': (context) => ProductPage4(),
          '/product5': (context) => ProductPage5(),
          '/product6': (context) => ProductPage6(),
          '/daftar-toko' : (context) => DaftarToko(),
          
        },
      ),
    );
  }
}
