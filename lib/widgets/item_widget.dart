import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10, right:10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                // Text(
                  // "Top",
                  // style: TextStyle(
                  //   fontSize: 25,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.black,
                  // ),
            // Text(
            //       "See All",
            //       style: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black54,
            //       ),
            //     ),
          ],
        )
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10) ,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        children: [
          for (int i=1; i<8; i++)
         Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black12.withOpacity(0.5),
            //   spreadRadius: 1,
            //   blurRadius: 3,
            // ),
          ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                 Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child:Image.asset("images/$i.png", 
                  height: 100,
                  width: 100,
                 
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom:8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Item ",
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                  ),
                ),
                ),
                Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Vegetable ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    
                    Padding(padding: EdgeInsets.symmetric(vertical:5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$20",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF02A368),
                            borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            
                          ),
                        )
                      ],
                    ),
                    ), 
            ],
          ),
         ),

        ],
        ),
      ],
    );
  }
}