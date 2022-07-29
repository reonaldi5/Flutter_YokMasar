import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yokmasar/models/user_model.dart';
import 'package:yokmasar/providers/auth_provider.dart';
import 'package:yokmasar/theme.dart';

class EditProfilePage extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header(){
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: background4,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile'
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: biru,
            ),
            onPressed: (){},
          ),
        ],
      );
    }
    Widget nameInput(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: Hint.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whitetextstyle,
              decoration: InputDecoration(
                hintText: user.name,
                hintStyle: whitetextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintText,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: Hint.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whitetextstyle,
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: whitetextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintText,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: Hint.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whitetextstyle,
              decoration: InputDecoration(
                hintText: user.email,
                hintStyle: whitetextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintText,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content(){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: secondbackground,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}