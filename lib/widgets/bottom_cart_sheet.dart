import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

    @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        height: 650,
        child: Column(
          children: [
            // Title Text
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Order", // Add your title here
                style: TextStyle(
                  fontSize: 24, // Size of the title
                  fontWeight: FontWeight.bold, // Make it bold
                  color: Colors.black, // Title color
                ),
              ),
            ),

            // Horizontal Row with options
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space between text items
                children: [
                  // "All" text with padding and borderRadius
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16), // Padding inside the container
                    decoration: BoxDecoration(
                      color: Colors.green, // Background color
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                    ),
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),

                  // Other texts (without borderRadius, but you can add it similarly if needed)
                  Text(
                    "Processing",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Pending",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Scrollable content
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i=1; i<8; i++)
                    // Example of a content block
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 8,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "images/$i.png",
                              height: 80,
                              width: 80,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: Text("Item", style:TextStyle(color: Colors.black,
                                fontSize: 20,
                                ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "\$6",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Processing",
                                  style: TextStyle(color: Colors.green),
                                ),
                              )
                            ],
                          )
                        ],
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
