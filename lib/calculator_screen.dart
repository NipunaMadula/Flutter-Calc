import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          //output
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Text("0",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
                ),
              ),
            ),
          ),

          //buttons
          Wrap(
            children: [],
          )

        ],
        ),
    );
  }
}