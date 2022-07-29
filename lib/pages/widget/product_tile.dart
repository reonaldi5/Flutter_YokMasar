import 'package:flutter/material.dart';
import 'package:yokmasar/theme.dart';

class TokoBrohanshop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/toko_hoodie.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hoodie',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Brohanshop',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 50.000 - Rp. 150.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoJeansCargo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
        Navigator.pushNamed(context, '/product2',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/toko_jeans_cargo.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Celana Jeans',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Jeans Cargo',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 50.000 - Rp. 200.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoIpang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
        Navigator.pushNamed(context, '/product3',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/toko_ipang_tas.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Tas Ipang Collection',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 50.000 - Rp. 150.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoKemeja extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
        Navigator.pushNamed(context, '/product4',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/toko_kemeja.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kemeja & Pakaian',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Kemeja',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 50.000 - Rp. 150.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoJayaDua extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
        Navigator.pushNamed(context, '/product5',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/snack_jaya_bersaudara.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Makanan & Snack',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Snack Jaya Dua Bersaudara',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 5.000 - Rp. 20.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TokoHikmah extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
        Navigator.pushNamed(context, '/product6',);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
    
        ),
    
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/toko_hikmah.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Makanan & Snack',
                    style: secondgreyText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Toko Hikmah',
                    style: whitetextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 5.000 - Rp. 20.000',
                    style: biruText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




