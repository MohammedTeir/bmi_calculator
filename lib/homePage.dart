import 'dart:math';

import 'package:bmi_calculator/bmi_results.dart';
import 'package:flutter/material.dart';

class bmihome extends StatefulWidget {
  @override
  _bmihomeState createState() {
    return _bmihomeState();
  }
}

class _bmihomeState extends State<bmihome> {
  double hight = 180;
  int weight = 35;
  int age = 18;

  bool isMale = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 15, 30),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 10, 15, 30),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 90,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isMale
                                      ? Colors.pinkAccent
                                      : Color.fromARGB(255, 26, 27, 45),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.all(10),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "MALE",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isMale
                                      ? Color.fromARGB(255, 26, 27, 45)
                                      : Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.all(10),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "FEMALE",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 26, 27, 45),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text('${hight.round()}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                Text('cm',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              child: Slider(
                                  activeColor: Colors.white54,
                                  thumbColor: Colors.pinkAccent,
                                  inactiveColor: Colors.white24,
                                  value: hight,
                                  min: 0,
                                  max: 200,
                                  onChanged: (value) {
                                    print('previus hight is :${hight.round()}');
                                    print('hight is : ${value.round()}');
                                    setState(() {
                                      hight = value;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 26, 27, 45),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.all(10),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text('$weight',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: "weight--",
                                        backgroundColor: Colors.white24,
                                        child: Icon(Icons.remove),
                                        onPressed: () {
                                          setState(() {
                                            if (weight <= 0) {
                                              weight = 0;
                                            } else {
                                              --weight;
                                            }
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      FloatingActionButton(
                                          heroTag: 'weight++',
                                          backgroundColor: Colors.white24,
                                          child: Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              ++weight;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 25),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 26, 27, 45),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.all(8),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'AGE',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text('$age',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: "age--",
                                        backgroundColor: Colors.white24,
                                        onPressed: () {
                                          setState(() {
                                            if (age <= 0) {
                                              age = 0;
                                            } else {
                                              --age;
                                            }
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      FloatingActionButton(
                                        heroTag: 'age++',
                                        onPressed: () {
                                          setState(() {
                                            ++age;
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        backgroundColor: Colors.white24,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  var bmi = weight / pow(hight / 100, 2);
                  return results(
                    bmi: bmi,
                  );
                }));
              },
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "CALCULATE",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 3,
                    indent: 125,
                    endIndent: 120,
                    height: 20,
                  )
                ],
              ),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
