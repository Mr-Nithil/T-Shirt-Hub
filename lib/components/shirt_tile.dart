
import 'package:e_commerce_app/models/shirt.dart';
import 'package:flutter/material.dart';

class ShirtTile extends StatelessWidget {

  Shirt shirt;
  void Function()? onTap;

  ShirtTile({super.key, required this.shirt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Shirt pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shirt.imagePath
            ),
          ),

          //description 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shirt.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shirt.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '\$' + shirt.price,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                // button to add to cart
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
            
              ],
            ),
          ),
        ],
      )
    );
  }
}