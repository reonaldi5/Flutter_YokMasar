import 'package:flutter/material.dart';
import 'package:yokmasar/pages/widget/product_tile.dart';
import 'package:yokmasar/theme.dart';

class DaftarToko extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    Widget tokoTitle () {
      return Container(
        margin: EdgeInsets.only(
          top: 60,
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

    Widget daftarToko () {
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
        tokoTitle(),
        daftarToko(),
      ],
    ); 

  }
}