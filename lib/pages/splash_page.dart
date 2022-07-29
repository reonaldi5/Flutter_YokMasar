import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yokmasar/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    Timer(Duration(seconds: 5),
    () => Navigator.pushNamed(context, '/sign-in'),);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: Center(
        child:Container(
            height: 207,
            width: 198,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo_yokmasar.png'),
              ),
            ),
        ),
      ),
    );
  }
}

