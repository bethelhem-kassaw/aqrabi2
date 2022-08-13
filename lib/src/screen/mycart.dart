import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                
                Icons.chevron_left,
                size: 40,
              )),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
          title: Text("My cart")),
    );
  }
}
