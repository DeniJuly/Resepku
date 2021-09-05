import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resepku/theme/theme.dart';

class SliderPage extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  SliderPage({@required this.image, @required this.title, @required this.text});

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
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            title,
            style: GoogleFonts.quicksand(
                fontSize: 24, fontWeight: FontWeight.bold, color: black),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            text,
            style: GoogleFonts.quicksand(fontSize: 15, color: grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
