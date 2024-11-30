import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiscreen/const/colors.dart';

class buildFeaturesBar extends StatelessWidget {
  final String tittle;
  final String description;
  final IconData icons;
  const buildFeaturesBar({
    super.key,
    required this.tittle,
    required this.description,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: appBarColor),
                shape: BoxShape.circle),
            child: Icon(
              icons,
              color: appBarColor,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    height: 1,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                description,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.grey[600],
                      height: 1,
                      wordSpacing: .1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
