// ignore_for_file: deprecated_member_use

import 'package:digitaltechsindustry/Shopkeeper/shop_cart.dart';
import 'package:digitaltechsindustry/screen/product_carousel.dart';
import 'package:digitaltechsindustry/screen/product_model.dart';
import 'package:flutter/material.dart';

class Marketing_item extends StatefulWidget {
  const Marketing_item({Key? key}) : super(key: key);

  @override
  State<Marketing_item> createState() => _Marketing_itemState();
}

class _Marketing_itemState extends State<Marketing_item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => print('Menu'),
            child: const Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "Digital Tech Industry",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('Search'),
              child: const Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              const Image(
                width: 250,
                image: AssetImage(
                  'assets/mobileshop.jpg',
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 30.0,
                right: 30.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 10.0),
                    const Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      '40% off',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 70.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          const Image(
                            image: AssetImage('assets/phone.jpg'),
                            height: 50.0,
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Buy OppoA5s in',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'very Cheap Price',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 60.0,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(10.0),
                                    onPressed: () => print('Go to product'),
                                    color: Colors.orange,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15.0),
          ProductCarousel(
            title: 'Shop Deals',
            products: products,
          ),
          ProductCarousel(
            title: 'Popular Products',
            products: books,
          ),
        ],
      ),
    );
  }
}
