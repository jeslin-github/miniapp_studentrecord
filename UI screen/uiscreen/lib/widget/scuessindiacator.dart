import 'package:flutter/material.dart';

import 'package:uiscreen/const/colors.dart';

class SucessIndicator extends StatelessWidget {
  const SucessIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: greenColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
