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
              Container(
                margin: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/2.png")
                  ),
                ),
                child: InkWell(
                  onTap: (){
                    // Navigate to the previous page
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back, 
                    color: Colors.black, 
                    size: 25),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30),
                 topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bangla Tomato", 
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                            ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green.withOpacity(0.5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    
                                  ),
                                ]
                              ),
                              child: Icon(Icons.remove,)
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
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
                                    color: Colors.green.withOpacity(0.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.add,
                                )),
                          ],
                        )
                      ],
                    ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,
                        color:Colors.amber,
                        size:30,
                        ),
                        Text(
                          "4.8 (230)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        )

                      ],
                    ),
                    Padding(padding:  EdgeInsets.symmetric(vertical: 10 ),
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
                        Text("The tomato is the edible berry of the plant Solanum ",
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
              )
            ],
          ),
        ),
        ),
        bottomNavigationBar: BottonBar(),
    );
  }
}