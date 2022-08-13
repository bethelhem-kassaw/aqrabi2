import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class supplierui extends StatefulWidget {
  const supplierui({super.key});

  @override
  State<supplierui> createState() => _supplieruiState();
}

class _supplieruiState extends State<supplierui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("supplier page")),
    );
  }
}