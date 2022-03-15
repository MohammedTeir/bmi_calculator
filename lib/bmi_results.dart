import 'package:flutter/material.dart';

class results extends StatelessWidget {
  results({required this.bmi});

  String getresult(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return "Normal";
    } else if (bmi >= 25) {
      return "Overweight";
    }

    return "Normal";
  }

  String getmsg(double bmi) {
    if (bmi < 18.5) {
      return 'You have a lower than normal . You can eat a bit more';
    } else if (bmi >= 18.5 && bmi < 25) {
      return "You have a normal body weight . Good Job!";
    } else if (bmi >= 25) {
      return "You have a higher than normal weight. Try to exercise more.";
    }

    return "You have a normal body weight . Good Job!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 15, 30),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color.fromARGB(255, 10, 15, 30),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Result',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 26, 27, 45),
                        ),
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${getresult(bmi)}",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${bmi.toStringAsFixed(1)}',
                              style: TextStyle(
                                  fontSize: 80,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Text(
                                    getmsg(bmi),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
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
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "RE-CALCULATE",
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

  final double bmi;
}
