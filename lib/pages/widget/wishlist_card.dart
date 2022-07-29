import 'package:flutter/material.dart';
import 'package:yokmasar/theme.dart';

class WishListCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: background3,
      ),

      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/toko_hoodie.jpeg',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  'Toko Brohanshop',
                  style: whitetextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  'Rp. 50.000 - Rp.150.000',
                  style: biruText,
                  ),
              ],
            ),
          ),
          Image.asset(
            'assets/favorite_icon.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}