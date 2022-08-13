import 'package:aqrabi2/src/controller/productcontroller.dart';
import 'package:aqrabi2/src/screen/view/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  productController _productcontroller = Get.put(productController());
  MediaQueryData? queryData;
  Image appLogo = new Image(
      image: new ExactAssetImage("assets/image/logo.png"),
      height: 28.0,
      width: 20.0,
      alignment: FractionalOffset.center);
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Obx(() {
      return Scaffold(
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'cart',
              backgroundColor: Colors.amber),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.notification_add), label: 'cart'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'profile')
        ]),
        drawer: Drawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Image.asset(
            'assets/image/logo.png',
            fit: BoxFit.cover,
            height: 40,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: queryData!.size.height * .03),
              _searchBar(),
              Container(
                height: 50,
                child: Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _categoryitems(context, index);
                    },
                  ),
                ),
              ),
              Text(_productcontroller.productlist.length.toString()),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return _items(context, index);
                  },
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _searchBar() {
    final textFieldStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            suffixIcon: const Icon(Icons.menu, color: Colors.grey),
            contentPadding: const EdgeInsets.all(10),
            border: textFieldStyle,
            focusedBorder: textFieldStyle),
      ),
    );
  }
}

_categoryitems(context, index) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(index.toString()),
        ),
      )
    ],
  );
}

_items(BuildContext context, index) {
  return InkWell(
    onTap: () {
      // Get.to(const productDetail());

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => productDetail(
                    id: index,
                  ))));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.grey)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("data title from you"),
                Row(
                  children: [Text("Price"), Text("400")],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
