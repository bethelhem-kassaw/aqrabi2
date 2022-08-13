import 'package:aqrabi2/src/screen/view/widget/countbutton.dart';
import 'package:flutter/material.dart';

class productDetail extends StatelessWidget {
  int? id;
  productDetail({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: 300,
                      height: 450,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Title".toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                      "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket."
                          .toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 25)),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                    Text(
                      1.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 2),
                          child: Text("price".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2, bottom: 20),
                          child: Text("300.00".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Add to cart")),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
