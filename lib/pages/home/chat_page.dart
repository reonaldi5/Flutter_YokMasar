import 'package:flutter/material.dart';
import 'package:yokmasar/theme.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    Widget header(){
      return AppBar(
        backgroundColor: background4,
        centerTitle: true,
        title: Text(
          'Live Chat',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: secondbackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/headset_icon.png',
                width: 80,
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Coming Soon For Live Chat',
                style: whitetextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}