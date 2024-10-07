import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:food_store/widgets/botton_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image container with back button and cart icon
              Stack(
                children: [
                  // Product image
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 350,
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/2.png")),
                    ),
                  ),

                  // Back button
                  Positioned(
                    top: 15,
                    left: 15,
                    child: InkWell(
                      onTap: () {
                        // Navigate to the previous page
                        Navigator.pop(context);
                      },
                      child:
                          Icon(Icons.arrow_back, color: Colors.black, size: 25),
                    ),
                  ),

                  // Cart icon with badge in the top right corner
                  Positioned(
                    top: 15,
                    right: 15,
                    child: badges.Badge(
                      badgeContent: Text(
                          '3'), // Replace '3' with the number of items in the cart
                      badgeStyle: badges.BadgeStyle(
                        badgeColor: Colors.red,
                        padding: EdgeInsets.all(6),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Handle cart icon press, navigate to the cart page or show the cart
                        },
                        child: Icon(Icons.shopping_cart,
                            color: Colors.black, size: 25),
                      ),
                    ),
                  ),
                ],
              ),

              // Product details container
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product title, Deshi Dish, and quantity container
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product title
                          Text(
                            "Bangla Tomato",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height: 5), // Space between title and deshi dish

                          // Deshi Dish text
                          Text(
                            "Deshi Dish",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Space between Deshi Dish and star rating

                          // Star rating
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 30),
                              Icon(Icons.star, color: Colors.green, size: 30),
                              Icon(Icons.star, color: Colors.green, size: 30),
                              Icon(Icons.star, color: Colors.green, size: 30),
                              SizedBox(width: 5),
                              Text(
                                "4.8 (230)",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  10), // Space between star rating and quantity selector

                          // Quantity selector (1, +, - buttons) and Price in the same row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Icon(Icons.remove),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                              // Price text aligned to the right
                              Text(
                                "\$7.50",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // About the product section
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About the product",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "The tomato is the edible berry of the plant Solanum.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonBar(),
    );
  }
}
