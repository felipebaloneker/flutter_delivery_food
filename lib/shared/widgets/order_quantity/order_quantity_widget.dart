import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrderQuantity extends StatefulWidget {
  const OrderQuantity({super.key});

  @override
  State<OrderQuantity> createState() => _OrderQuantityState();
}

class _OrderQuantityState extends State<OrderQuantity> {
  int _numberOrder = 1;

  void _incrementCounter() {
    setState(() {
      _numberOrder++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$_numberOrder'),
    );
  }
}
