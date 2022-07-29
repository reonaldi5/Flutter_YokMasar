import 'package:flutter/material.dart';
import 'package:yokmasar/pages/home/chat_page.dart';
import 'package:yokmasar/pages/home/daftar_toko.dart';
import 'package:yokmasar/pages/home/home_page.dart';
import 'package:yokmasar/pages/home/profile_page.dart';
import 'package:yokmasar/pages/home/wishlist_page.dart';
import 'package:yokmasar/theme.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {


    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),

        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: navbar,
            currentIndex: currentIndex,
            onTap: (value){
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/main_page.png',
                    width: 21,
                    color: currentIndex == 0 ? orange: Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/Chat_Icon.png',
                    width: 22,
                    color: currentIndex == 1 ? orange: Color(0xff808191),
                  ),
                ),
                label: '',
              ),

              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/Love.png',
                    width: 20,
                    color: currentIndex == 2 ? orange: Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/Profile.png',
                    width: 18,
                    color: currentIndex == 3 ? orange: Color(0xff808191),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {

        case 0:
          return HomePage();
          break;

        case 1:
          return ChatPage();
          break;
        
        case 2:
          return WishlistPage();
          break;


        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }


    return Scaffold(
      backgroundColor: secondbackground,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}