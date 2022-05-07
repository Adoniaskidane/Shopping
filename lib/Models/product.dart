import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shopping/Models/user.dart';

class Product{
  int id;
  DateTime dateTime;
  String name;
  String catagory;
  String brand;
  String discription;
  int rate;
  File image;
  User provider;
  Product({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.catagory,
    required this.brand,
    required this.discription,
    required this.rate,
    required this.image,
    required this.provider
  });
}


class Products extends ChangeNotifier{

  Map<DateTime,String> productlist=new Map();
  Products(){
    print('Hello products');
  }

  void AddProduct(){
    final now = DateTime.now();
    productlist[now]='New_product';
    print('Adding: '+productlist.keys.elementAt(productlist.length-1).toString());
    print(productlist.length);
    notifyListeners();
  }

  void RemoveProduct(int index){
    print('Remove: '+productlist.keys.elementAt(index).toString());
    productlist.remove(productlist.keys.elementAt(index));
    print(productlist.length);
    notifyListeners();
  }
}