import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageCard extends StatelessWidget {
  const ManageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEF7019),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.campaign,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Marketing',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, height: 1.2),
              ),
            ),
            Text(
              'Designs',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!============================2
class ManageCard2 extends StatelessWidget {
  const ManageCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFF63D261),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.currency_rupee,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 4,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                  ),
                )
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Online',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Payments',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!==========================3
class ManageCard3 extends StatelessWidget {
  const ManageCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF4B252),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.percent_rounded,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 4,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                  ),
                )
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Discount',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Coupons',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!=========================4
class ManageCard4 extends StatelessWidget {
  const ManageCard4({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFF18A99B),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'My',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Customers',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!============================5

class ManageCard5 extends StatelessWidget {
  const ManageCard5({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xFF7C7C7C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    )),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.center_focus_weak_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Store QR',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Code',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!=================================6

class ManageCard6 extends StatelessWidget {
  const ManageCard6({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFF6F43A5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.payments_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Extra',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Charges',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!====================================7

class ManageCard7 extends StatelessWidget {
  const ManageCard7({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Color(0xFFBF5A88),
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      top: 10,
                      child: Icon(
                        Icons.format_align_left,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 45,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF18A99B),
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: const Text(
                    'NEW',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Order',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            ),
            Text(
              'Form',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
