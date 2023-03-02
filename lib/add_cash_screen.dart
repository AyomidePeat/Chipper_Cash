import 'package:flutter/material.dart';

class AddCashScreen extends StatefulWidget {
  const AddCashScreen({super.key});

  @override
  State<AddCashScreen> createState() => _AddCashScreenState();
}

class _AddCashScreenState extends State<AddCashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Add Cash", style: TextStyle())),
          backgroundColor: Color.fromARGB(255, 111, 7, 208),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text("Tap to enable your Chipper Account Number",
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "9001XXXXXX",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Main Bank",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Money Transfers sent to this bank  accouunt number will automatically top up your Chipper wallet. Receive your salary funds from any bank account locally, directly into your Chipper wallet.",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 360),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "   Share Details",
                  style: TextStyle(
                      color: Color.fromARGB(255, 111, 7, 208),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
