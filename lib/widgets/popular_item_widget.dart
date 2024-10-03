import 'package:flutter/material.dart';


class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left:10, right: 10, bottom: 5, top:20),
        
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
                "Popular",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
          ],
        ) ,
        
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for (int i=1; i< 8; i++)
            Container(
               margin: EdgeInsets.all(10 ),
               padding:  EdgeInsets.all(5),
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]
              ),
              child: Image.asset("images/$i.png")
            )
          ],)
        )
      ],
    );
  }
}