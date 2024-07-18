import 'package:e_commerce_app/components/Shirt_tile.dart';
import 'package:e_commerce_app/models/Shirt.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            children: [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey
                )
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        //message

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Brand new T-shirts and custom designs – get yours now!",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13
            ),
            textAlign: TextAlign.center,
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){

              Shirt shirt = Shirt(
                name: "Men's T Shirt", 
                price: "240", 
                imagePath: "assets/T01.jpg", 
                description: "Cool T shirt"
              );

              return ShirtTile(
                shirt: shirt,
              );
            },
          ),
        ),

        


        // Padding(
        //   padding: const EdgeInsets.only(top: 25.0, left: 25 , right: 25),
        //   child: Divider(
        //       color:Colors.white
        //     ),
        // )

      ],
    );
  }
}