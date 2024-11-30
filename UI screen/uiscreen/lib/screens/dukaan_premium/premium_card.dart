import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uiscreen/const/colors.dart';

class premiumCard extends StatelessWidget {
  const premiumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      padding: const EdgeInsets.symmetric(vertical: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .5, color: arrowColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: appBarColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.business_center_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'dukaan',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.black,
                            height: 1),
                      ),
                    ),
                    const Text(
                      'PREMIUM',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: appBarColor,
                          height: .2),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            'Get Dukaan premium for just',
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: .5,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            '\u20B94,999/year',
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.6,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            'All the advanced features for scalling your',
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                height: 1.2,
                color: Colors.grey,
              ),
            ),
          ),
          Text(
            'business.',
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                height: 1.2,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
// assistant 
//business_center_rounded ,