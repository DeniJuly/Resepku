import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resepku/theme/theme.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            'Resepku',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              color: primary,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          Image.asset(
            'assets/illustrations/il_onboarding_one.png',
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            'Pilih resep favoritmu.',
            style: GoogleFonts.quicksand(
                fontSize: 24, fontWeight: FontWeight.bold, color: black),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'tersedia berbagai resep dengan bermacam-macam kategori hidangan.',
            style: GoogleFonts.quicksand(fontSize: 15, color: grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
