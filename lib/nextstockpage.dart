// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:another_stepper/another_stepper.dart';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class NextStockPage extends StatefulWidget {
  const NextStockPage({super.key});

  @override
  State<NextStockPage> createState() => _NextStockPageState();
}

class _NextStockPageState extends State<NextStockPage> {
  //First Card..//
  List<StepperData> stepperData = [
    StepperData(
      title: StepperText(
        "Packing",
        textStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.replay,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "In Country",
        textStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "In City",
        textStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "Arrived",
        textStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
  ];
  //Second Card..//
  List<StepperData> stepperData1 = [
    StepperData(
      title: StepperText(
        "Packing",
        textStyle: TextStyle(color: Colors.green),
      ),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "In Country",
        textStyle: TextStyle(
          color: Colors.green,
        ),
      ),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "In City",
        textStyle: TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.replay,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
    StepperData(
      title: StepperText(
        "Arrived",
        textStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: LinearGradient(
          colors: [
            Color(0xFF5e49da),
            Color.fromARGB(255, 86, 67, 192),
          ],
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 18,
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(3),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF7d67f8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: badge(
              badgeStyle: BadgeStyle(
                badgeColor: Colors.blue,
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Colors.green, width: 5),
              ),
              badgeContent: Text(
                '1',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              child: CircleAvatar(
                backgroundColor: Color(0xFF7d67f8),
                radius: 100,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.all(3),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF7d67f8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              backgroundColor: Color(0xFF7d67f8),
              radius: 100,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
     
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF5f49db),
                    Color.fromARGB(255, 86, 67, 192),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.88,
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                //First Card..//
                Container(
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.width * 0.77,
                  width: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Text(
                            'ID: 95 259105',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5756ed),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                '17 Dec,19',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFc4c9cf)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Text(
                                '20 Dec,19',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFc4c9cf),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                'Berlin',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Text(
                                'Dortmund',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AnotherStepper(
                          stepperList: stepperData,
                          stepperDirection: Axis.horizontal,
                          iconWidth: 20,
                          iconHeight: 20,
                          activeBarColor: Colors.green,
                          inActiveBarColor: Colors.grey,
                          activeIndex: 0,
                          barThickness: 2,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.52,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 250, 250, 250),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Image(
                                        image: AssetImage('assets/airpods.png'),
                                        height: 60,
                                        width: 60,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'AirPods Pro',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF393d74),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'White 1 pair',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf0f5fc),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '\$249.00',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF7877f1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Second Card ....//
                Container(
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.width * 0.77,
                  width: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Text(
                            'ID: 92 937467',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5756ed),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                '15 Dec,19',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFc4c9cf)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Text(
                                '18 Dec,19',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFc4c9cf),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                'Berlin',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              child: Text(
                                'Dortmund',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AnotherStepper(
                          stepperList: stepperData1,
                          stepperDirection: Axis.horizontal,
                          iconWidth: 20,
                          iconHeight: 20,
                          activeBarColor: Colors.green,
                          inActiveBarColor: Colors.green,
                          activeIndex: 2,
                          barThickness: 2,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.52,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 250, 250, 250),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('assets/iphone11.png'),
                                        height: 50,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'iPhone 11',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF393d74),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Purple 128 Gb',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf0f5fc),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '\$730.00',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF7877f1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

badge({required BadgeStyle badgeStyle, required Text badgeContent, required CircleAvatar child}) {
}
