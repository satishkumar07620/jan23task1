// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, annotate_overrides, camel_case_types, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_import

// import 'package:badges/badges.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:jan23task1/nextstockpage.dart';

//https://stackoverflow.com/questions/73217733/add-notification-badge-for-particular-grid-in-flutter

class Stock extends StatefulWidget {
  const Stock({
    super.key,
  });

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  List<model1> list1 = [
    model1(
      title: "10%",
      price: "Discount",
    ),
    model1(
      title: "\$32%",
      price: "Bonuses",
    ),
    model1(
      title: "\$70%",
      price: "Deposit",
    ),
  ];
  List<model> list = [
    model(
      image: "assets/O.png",
      title: "Orders History",
    ),
    model(
      image: "assets/p.png",
      title: "Payment Method",
    ),
    model(
      image: "assets/t.png",
      title: "Tracking",
    ),
    model(
      image: "assets/pie.png",
      title: "Statistics",
    ),
    model(
      image: "assets/11.png",
      title: "Setting",
    ),
    model(
      image: "assets/O.png",
      title: "Apple",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color.fromARGB(237, 9, 9, 9),
          size: 18,
        ),
        
        actions: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 40,
            child: badge(
              
              badgeStyle: BadgeStyle(
                badgeColor: Colors.white,
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              badgeContent: Text(
                '1',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 249, 248, 248),
                radius: 25,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 236, 233, 233),
            radius: 30,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 249, 248, 248),
              radius: 24,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NextStockPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
     
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.77,
              width: MediaQuery.of(context).size.width * 0.99,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 42, 26, 137),
                    Color(0xFF5e49da),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: list1.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF7c67f8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list1[index].title!,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      list1[index].price!,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 202, 195, 195),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/pro.jpg'), fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Text(
                  'Robert Williamson',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: GridView.builder(
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 2,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage(list[index].image!),
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            list[index].title!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class model {
  String? image;
  String? title;
  model({
    required this.image,
    required this.title,
  });
}

class model1 {
  String? title;
  String? price;
  model1({
    required this.title,
    required this.price,
  });
}
