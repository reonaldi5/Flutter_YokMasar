import 'dart:io';
import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yokmasar/theme.dart';



// TOKO TAS IPANG COLLECTION



class ProductPage3 extends StatefulWidget {

  @override
  State<ProductPage3> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage3> {

  openwhatsapp() async{
    var whatsapp ="+6285172147256";
    var whatsappURl_android = "https://api.whatsapp.com/send?phone="+whatsapp+"&text=Hallo saya ingin pesan produk tas dari toko ipang collection";
    var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if(Platform.isIOS){
      // for iOS phone only
      if( await canLaunch(whatappURL_ios)){
         await launch(whatappURL_ios, forceSafariVC: false);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));
      }
    }else{
      // android , web
      if( await canLaunch(whatsappURl_android)){
        await launch(whatsappURl_android);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }
  

  List images = [
    'assets/toko_ipang_tas.jpeg',
    'assets/toko_ipang_tas2.jpeg',
    'assets/toko_ipang_tas3.jpeg',
  ];

  int currentIndex = 0;
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {

    Widget indicator(int index){
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? orange : Color(0xffC4C4C4),
        ),
      );
    }

    Widget header() {

      int index = -1;

      return Column(
        children:[
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
              .map(
                (image) => Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width,
                  height: 310,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e){
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }



    Widget content(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: secondbackground,          
        ),
        child: Column(
          children:[

            // NOTE : HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Toko Tas Ipang Collection ',
                          style: whitetextstyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold,
                          ),
                        ),
                        Text(
                          'Tas dan lain lain',
                          style: secondgreyText.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishlist = !isWishlist;
                      });
                      if (isWishlist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: biru,
                            content: Text(
                              'Ditambahkan ke dalam favorit',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: red,
                            content: Text(
                              'Dihapus di dalam favorit',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      isWishlist ? 'assets/favorite_icon.png' : 'assets/favorite_icon(grey).png',
                      width: 46,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE : PRICEEE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: background5,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harga Mulai Dari',
                    style: whitetextstyle,
                  ),
                  Text(
                    'Rp 50.000',
                    style: whitetextstyle,
                  ),
                ],
              ),
            ),

            // NOTE : DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    style: whitetextstyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    'Toko tas yang ada di pasar gede bage bandung, dengan beralamat blok e32',
                    style: secondgreyText.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            // NOTE : ALAMAT DI PASAR GEDE BAGE BANDUNG

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat di Pasar Gede Bage Bandung',
                    style: whitetextstyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    'blok e32',
                    style: secondgreyText.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE : BUTTONS WHATSAPP

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 80,
                left: defaultMargin,
                right: defaultMargin,
              ),

              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        onPressed: () {
                          openwhatsapp();
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: whatsappcolor,
                        ),
                        child: Text(
                          'WhatsApp',
                          style: whitetextstyle.copyWith(
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }


    return Scaffold(
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ), 
    );
  }
}