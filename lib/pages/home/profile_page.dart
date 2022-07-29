import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yokmasar/models/user_model.dart';
import 'package:yokmasar/providers/auth_provider.dart';
import 'package:yokmasar/theme.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header(){
      return AppBar(
        backgroundColor: background4,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    user.profilePhotoUrl,
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo ${user.name}',
                        style: whitetextstyle.copyWith(
                          fontSize: 22,
                          fontWeight: semibold,
                        ),
                      ),
                      Text(
                        '@${user.username}',
                        style: Hint.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/Exit_Button.png',
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text){
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Hint.copyWith(
                fontSize: 13,
              ), 
            ),
            Icon(
              Icons.chevron_right,
              color: white,
            ),
          ],
        ),
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: secondbackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: whitetextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem(
                  'Edit Profile'
                ),
              ),
              menuItem(
                'Help'
              ),

              SizedBox(
                height: 30,
              ),

              Text(
                'General',
                style: whitetextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              menuItem(
                'Rate App'
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