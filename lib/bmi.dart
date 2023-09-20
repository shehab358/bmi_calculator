import 'dart:math';

import 'package:bmi/result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 160;
  int age = 20;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 0, 133),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 0, 85),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
         ),
      ),
      ),
      body: Column(
        children: [
           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){ 
                      setState(() {
                        isMale = true;
                      }); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color : isMale? const Color.fromARGB(255, 88, 0, 241) : const Color.fromARGB(255, 31, 0, 85),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/male.png'
                                ),
                                height: 90,
                                width: 90,
                                color: Colors.white,
                              ),
                            SizedBox(
                              height: 15
                            ),
                            Text(
                              'MALE',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(
                  width: 15
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:() {
                        setState(() {
                        isMale = false;
                      });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color : !isMale?const Color.fromARGB(255, 88, 0, 241) :const Color.fromARGB(255, 31, 0, 85),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/female.png'
                                ),
                                height: 90,
                                width: 90,
                                color: Colors.white,
                              ),
                            SizedBox(
                              height: 15
                            ),
                            Text(
                              'FEMALE',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration:  BoxDecoration(
                  color: const Color.fromARGB(255, 31, 0, 85),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                         'HEIGHT',
                          style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                       ),
                    ),
                    const SizedBox(
                      height: 5
                      ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                                '${height.round()}',
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey
                              ),
                              ),
                              const Text(
                                'CM',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                              ),
                              ),
                      ],
                    ),
                      Slider(
                        value:height ,
                        max: 220,
                        min: 100, 
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                          print(
                            value.round()
                            );
                        },
                         ),
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration:  BoxDecoration(
                      color: const Color.fromARGB(255, 31, 0, 85),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           const Text(
                               'AGE',
                                style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                             ),
                          ),
                           Text(
                               '$age',
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey
                                    ),
                                    ),
                               Slider(
                            value: age.toDouble(),
                            max: 75,
                            min: 5,
                            onChanged: (value) {
                              setState(() {
                                age = value.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration:  BoxDecoration(
                      color: const Color.fromARGB(255, 31, 0, 85),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           const Text(
                               'WEIGHT',
                                style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                             ),
                          ),
                           Text(
                               '$weight',
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey
                                    ),
                                    ),
                                Slider(
                            value: weight.toDouble(),
                            max: 150,
                            min: 30,
                            onChanged: (value) {
                              setState(() {
                                weight = value.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
          Container(
            width: double.infinity ,
            color: const Color.fromARGB(255, 149, 63, 255),
            child: MaterialButton(
              height: 45,
              onPressed: (){
              var result = weight / pow(height / 100, 2);   
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => BMIResultScreen(
                    age: age,
                    isMale: isMale,
                    result: result.round(),
                  )
                  ),
                );             
               },
             child: const Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
          ),   
        ],
      )
      );
  }
}