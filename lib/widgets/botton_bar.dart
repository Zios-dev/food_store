import 'package:flutter/material.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     child: Container(
     height: 70,
     padding: EdgeInsets.symmetric(horizontal: 20),
     decoration: BoxDecoration(
       color: Colors.white,
     ),
     child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Icon(Icons.favorite, 
         size: 30, 
         color: Colors.green),
         InkWell(
              onTap: () {
                // Add your functionality here (e.g., add to cart)
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.green, // Black background
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Adjust size to content
                  children: [
                    Icon(Icons.add_shopping_cart,
                        size: 30, color: Colors.white),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white, // Text color to white
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
       ],

     ),
     ),
    );
    
  }
}