import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({
    super.key,
     required this.result,
      required this.isMale,
       required this.age
       });

final int result;
final bool isMale;
final int age;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 0, 133),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Center(
            child: Column(
              children: [
                Row(
                 children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25 ,0 ,16,16),
                      child: Text(
                        'Your Summary',
                        style: GoogleFonts.openSans(
                          fontSize: 32,
                          color: const Color.fromARGB(255, 149, 63, 255)
                        )
                        ),
                    ),
              
                 ],
               ),
               const SizedBox(
                height: 40,
               ),
                Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 320,
                    width: 300,
                    
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 0, 85),
                     borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your BMI Score is',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '$result',
                        style:const TextStyle(
                        fontSize: 40,
                        color:  Color.fromARGB(255, 149, 63, 255)
                        )
                        ,),
                        const SizedBox(
                          height: 5
                        ),
                       const Text(
                        'kg/m2',
                       style: TextStyle(
                         color: Colors.white
                       ),
                       ),
                       
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Your results falls within the',
                        style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                        
                        
                        if (result < 18.5)
                         const Text(
                            'Underweight range',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 153, 0)
                            ),
                          )
                        else if (result >= 18.5 && result <= 24.9)
                          const Text(
                            'Healthy Weight range',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 255, 8)
                            ),
                          )
                        else if (result >= 25.0 && result <= 29.9)
                         const Text(
                            'Overweight range',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 230, 0)
                            ),
                          )
                        else
                          const Text(
                            'Obese range',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                            ),
                          ),
                      ],
                    )
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 31, 0, 85),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: const Icon(
                      Icons.refresh_sharp,
                    color: Colors.white,
                     ),
                     iconSize: 50,
              
                     ),
                )
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}