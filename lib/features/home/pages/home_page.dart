import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Kathmandu,Nepal"),
                      ],
                    ),

                    SizedBox(height: 8),

                    Text("Today, Sun"),

                    // SizedBox(height: 12),
                    SizedBox(
                      width: 180,
                      child: Stack(
                        children: [
                          Text("16", style: TextStyle(fontSize: 100)),
                          Positioned(
                            right: 0,
                            top: 30,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,

                                    border: Border.all(width: 3),

                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(
                                  "C",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
