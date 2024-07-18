import 'package:e_commerce_app/components/shirt_tile.dart';
import 'package:e_commerce_app/models/shirt.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shirt to cart
  void addShirtToCart(Shirt shirt){
    Provider.of<Cart>(context, listen: false).addItemToCart(shirt);

    // alert the user
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(
          "Successfully added!"
        ),
        content: Text(
          "Check your cart"
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
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

        // list of shoe for sale
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              // get a shirt from shop list
              Shirt shirt = value.getShirtlist()[index];

              //return the shirt
              return ShirtTile(
                shirt: shirt,
                onTap: () => addShirtToCart(shirt)
              );
            },
          ),
        ),
      ],
    ),
    );
  }
}