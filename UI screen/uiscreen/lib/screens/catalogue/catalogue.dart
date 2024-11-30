// import 'package:flutter/material.dart';

// class CatalogueApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 2, // Two tabs: Products, Categories
//         child: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             title: Text(
//               "Catalogue",
//               style: TextStyle(color: Colors.white),
//             ),
//             backgroundColor: Colors.blue,
//             bottom: TabBar(
//               tabs: [
//                 Tab(text: "Products"),
//                 Tab(text: "Categories"),
//               ],
//               indicatorColor: Colors.white,
//             ),
//             actions: [
//               IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {
//                   // Implement search functionality
//                 },
//               ),
//             ],
//           ),
//           body: TabBarView(
//             children: [
//               ProductsPage(),
//               Center(
//                   child: Text('Categories Page')), // Placeholder for Categories
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProductsPage extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//       name: "Couch Potato | Women...",
//       price: 799,
//       stockStatus: "In stock",
//       imageUrl:
//           'https://changedfashion.in/blogs/news/all-you-need-to-know-about-womens-oversized-t-shirts', // Replace with actual image
//     ),
//     Product(
//       name: "Couch Potato | Men | Bl...",
//       price: 799,
//       stockStatus: "In stock",
//       imageUrl: 'https://via.placeholder.com/80', // Replace with actual image
//     ),
//     Product(
//       name: "Mug | Explore",
//       price: 399,
//       stockStatus: "In stock",
//       imageUrl: 'https://via.placeholder.com/80', // Replace with actual image
//     ),
//     Product(
//       name: "Combo Blahst 1 | Pack ...",
//       price: 699,
//       stockStatus: "In stock",
//       imageUrl: 'https://via.placeholder.com/80', // Replace with actual image
//     ),
//     // Add more products here as per your requirement
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: EdgeInsets.all(16),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return ProductCard(product: products[index]);
//       },
//     );
//   }
// }

// class Product {
//   final String name;
//   final int price;
//   final String stockStatus;
//   final String imageUrl;

//   Product(
//       {required this.name,
//       required this.price,
//       required this.stockStatus,
//       required this.imageUrl});
// }

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Product Image
//                 Image.asset(
//                   'assets/image/image1.png',
//                   width: 80,
//                   height: 80,
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(width: 16),
//                 // Product Name and Price
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         product.name,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "1 piece",
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "₹${product.price}",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         product.stockStatus,
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Toggle Button
//                 Switch(
//                   value: true, // Change this value as per product availability
//                   onChanged: (value) {
//                     // Implement switch functionality
//                   },
//                   activeColor: Colors.blue,
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             // Share Button
//             Row(
//               children: [
//                 Icon(Icons.share, color: Colors.grey),
//                 SizedBox(width: 5),
//                 Text(
//                   "Share Product",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
