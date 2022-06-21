import 'package:digitaltechsindustry/auth/customer_signup.dart';
import 'package:digitaltechsindustry/screen/product_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _buildCartProduct(int index) {
    return ListTile(
      contentPadding: const EdgeInsets.all(20.0),
      leading: Image(
        height: double.infinity,
        width: 100.0,
        image: AssetImage(
          cart[index].imageUrl,
        ),
        fit: BoxFit.contain,
      ),
      title: Text(
        cart[index].name,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(
        'x1',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        '\$${cart[index].price.toStringAsFixed(2)}',
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shopping Cart (${cart.length})',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCartProduct(index);
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
          );
        },
      ),
      bottomSheet: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => customer_signup()));
        },
        child: Container(
          height: 80.0,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'PLACE ORDER (\$336.39)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
