import 'package:flutter/material.dart';
import 'package:uiscreen/screens/catalogue/catalogue.dart';
import 'package:uiscreen/screens/catalogue/catelogue_card.dart'; // Import the new details page

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order #1688068"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Date and Status
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("May 31, 05:42 PM", style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    Icon(Icons.circle, color: Colors.blue, size: 12),
                    SizedBox(width: 5),
                    Text("Delivered", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Item Details Section
            const Text("1 ITEM", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://media.istockphoto.com/id/1705999512/photo/charming-woman-in-nature.jpg?s=1024x1024&w=is&k=20&c=-bel0SDMFv1xVisVix0s7UJ3kBmIqLqZs0aIHeUwik0=',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore | Men | Navy Blue",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("1 piece\nSize: XL"),
                      SizedBox(height: 10),
                      Text(
                        "₹799",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Price Details
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Total", style: TextStyle(fontSize: 16)),
                Text("₹799", style: TextStyle(fontSize: 16)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery", style: TextStyle(fontSize: 16)),
                Text("FREE", style: TextStyle(fontSize: 16)),
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Grand Total",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("₹799",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),

            // Customer Details
            const Text("CUSTOMER DETAILS",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Deepa", style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 16),
                    Icon(Icons.messenger, color: Colors.green),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text("+91-7829000484", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Text(
              "D 1101 Chartered Beverly Hills, Subramanyapura P.O",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Bangalore", style: TextStyle(fontSize: 16)),
                Text("560061", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            // Payment Information
            const Text("PAYMENT",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment", style: TextStyle(fontSize: 16)),
                Text("Online", style: TextStyle(fontSize: 16)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment Status", style: TextStyle(fontSize: 16)),
                Text("PAID",
                    style: TextStyle(fontSize: 16, color: Colors.green)),
              ],
            ),
            const Divider(),

            // Additional Information
            const Text("ADDITIONAL INFORMATION",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("State", style: TextStyle(fontSize: 16)),
                Text("Karnataka", style: TextStyle(fontSize: 16)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Email", style: TextStyle(fontSize: 16)),
                Text("greeniceaqua@gmail.com", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            // Share Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Catelog()),
                );
              },
              child: const Text("Share receipt"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
