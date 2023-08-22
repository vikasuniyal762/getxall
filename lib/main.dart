// main.dart
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:getxall/Registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Started App',
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.3),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  height: 550,
                  width: 500,
                  child: Animator<double>(
                    duration: Duration(milliseconds: 1500),
                    cycles: 0,
                    curve: Curves.decelerate,
                    tween: Tween<double>(begin: 0.0 , end: 15.0),
                    builder: (context , animatorState,child)=> Container(
                      margin: EdgeInsets.all(animatorState.value),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.indigo, // Shadow color
                           // spreadRadius: 2, // How far the shadow should spread
                            blurRadius: 7,   // How blurry the shadow should be
                          //  offset: Offset(0, 3), // Offset of the shadow
                          ),
                        ],

                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fitness_center, // Replace with the desired icon
                              size: 24,
                              color: Colors.green, // Customize the icon color
                            ),
                            SizedBox(width: 8), // Adjust spacing between icon and text
                            Text(
                              'EAT , SLEEP ,GYM, REPEAT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Gets things done with TODO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Experience ultimate organization and productivity with our robust TODO app. '
                  'Seamlessly manage tasks, projects, and notes, all in one central hub. '
                  'Stay on top of your responsibilities effortlessly and achieve more every day.',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20,),

              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Adjust the fraction as needed
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the next page when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Registeration()), // Replace with your NextPage widget
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
