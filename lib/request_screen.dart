import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (AppBar(
          title: Center(child: const Text("Request money from")),
          backgroundColor: Color.fromARGB(255, 111, 7, 208),
        )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const TextField(
                cursorColor: Color.fromARGB(255, 111, 7, 208),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 222, 220, 220),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.search, size: 20, color: Colors.purple),
                  ),
                  hintStyle: TextStyle(fontSize: 14),
                  hintText: 'Search by Name or @ ChpperTag ',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                    "\nChipper works best with access to your contacts.\n Tap this banner to open settings to enable\n\n",
                    style: const TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 111, 7, 208),
                ),
              ),
              const SizedBox(height: 150),
              const Text("Search for any user on Chipper to transact with"),
            ],
          ),
        ),
      ),
    );
  }
}
