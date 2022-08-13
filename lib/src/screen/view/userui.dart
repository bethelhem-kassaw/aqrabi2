import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userui extends StatefulWidget {
  const userui({super.key});

  @override
  State<userui> createState() => _useruiState();
}

class _useruiState extends State<userui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("user page"),),
    );
  }
}