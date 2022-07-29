import 'package:flutter/material.dart';
import 'package:yokmasar/pages/widget/wishlist_card.dart';
import 'package:yokmasar/theme.dart';

class WishlistPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: background4,
        centerTitle: true,
        title: Text(
          'Favorite Toko',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: secondbackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Love_Icon.png',
                width: 74,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'Anda Tidak Punya Toko Favorite',
                style: whitetextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Ayo cari toko favorit anda',
                style: Hint,
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24,
                    ),
                    backgroundColor: orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Jelajahi Toko',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          color: secondbackground,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              WishListCard(),
              WishListCard(),
              WishListCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        //emptyWishlist(),
        content(),
      ],
    );
  }
}