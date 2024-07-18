import 'package:e_commerce_app/models/shirt.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shirts for sale
  List<Shirt> shirtShop = [
    Shirt(
      name: "Casual T-Shirt",
      price: "19.99",
      imagePath: "assets/T05.jpg",
      description: "A comfortable and stylish casual t-shirt made from 100% cotton."
    ),
    Shirt(
      name: "Formal Dress Shirt",
      price: "49.99",
      imagePath: "assets/T04.jpg",
      description: "A sleek and elegant formal dress shirt, perfect for business meetings and formal events."
    ),
    Shirt(
      name: "Sporty Polo Shirt",
      price: "29.99",
      imagePath: "assets/T01.jpg",
      description: "A sporty polo shirt ideal for active wear. it keeps you comfortable."
    ),
    Shirt(
      name: "Graphic Tee",
      price: "24.99",
      imagePath: "assets/T03.png",
      description: "A trendy graphic tee featuring a unique and eye-catching design."
    ),
  ];


  // list of items in user cart
  List<Shirt> userCart = [];


  // get list of shirts for sale
  List<Shirt> getShirtlist(){
    return shirtShop;
  }


  // get cart
  List<Shirt> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shirt shirt){
    userCart.add(shirt);
    notifyListeners();
  }


  // remove item from cart
  void removeItemFromCart(Shirt shirt){
    userCart.remove(shirt);
    notifyListeners();
  }



}