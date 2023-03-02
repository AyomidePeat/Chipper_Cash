import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class DataBundleScreen extends StatefulWidget {
  const DataBundleScreen({super.key});

  @override
  State<DataBundleScreen> createState() => _DataBundleScreenState();
}

class _DataBundleScreenState extends State<DataBundleScreen> {
  Country? country;
  @override
  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("Data Bundle")),
            backgroundColor: Colors.purple),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text("Enter a phone number to buy a mobile data bundle"),
              const SizedBox(height: 50),
              Row(
                children: [
                  if (country != null)
                    TextButton(
                        child: Text("+${country!.phoneCode}"),
                        onPressed: () {
                          pickCountry();
                        }),
                  TextField(
                    cursorColor: Color.fromARGB(255, 111, 7, 208),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                        color: Color.fromARGB(255, 111, 7, 208),
                      )),
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: ' Enter Phone Number ',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color.fromARGB(255, 111, 7, 208),
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
