import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yokmasar/models/user_model.dart';
import 'package:yokmasar/pages/widget/product_tile.dart';
import 'package:yokmasar/providers/auth_provider.dart';
import 'package:yokmasar/theme.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),

        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, ${user.name}',
                    style: whitetextstyle.copyWith(
                      fontSize: 24,
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
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget pasarGedeBageTitle(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Daftar Toko Pasar Gede Bage Bandung',
          style: whitetextstyle.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget daftarPasar(){
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),

        child: Column(
          children: [
            TokoBrohanshop(),
            TokoJeansCargo(),
            TokoIpang(),
            TokoKemeja(),
            TokoJayaDua(),
            TokoHikmah(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        pasarGedeBageTitle(),
        daftarPasar(),
      ],
    );
  }
}