import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiscreen/const/commonwidget.dart';

class ExpandedWidget extends StatelessWidget {
  final String question;
  // final IconData trailingIcon;
  const ExpandedWidget({
    super.key,
    required this.question,
    // required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
          fontWeight: FontWeight.bold,
          wordSpacing: .1,
          letterSpacing: .1,
        ),
      ),
      // trailing: Icon(trailingIcon),
      tilePadding: const EdgeInsets.symmetric(vertical: 0.0),
      childrenPadding: const EdgeInsets.all(0),
      children: <Widget>[
        Text('''Dukaan caters to a wide variety of seller.Be it a
       \nsmall grocery store or a big legacy brand - anyone 
       \nwho want to sell their product/service online-
       \nDukaan is perfect platform for you''',
            style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
                wordSpacing: .1,
                letterSpacing: .1,
                height: .7)),
        sizedBox5
      ],
    );
  }
}

Text expansdedText() {
  return Text('''Dukaan caters to a wide variety of seller.Be it a
                                   \nsmall grocery store or a big legacy brand - anyone 
                                   \nwho want to sell their product/service online-
                                   \nDukaan is perfect platform for you''',
      style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
          wordSpacing: .1,
          letterSpacing: .1,
          height: .7));
}
