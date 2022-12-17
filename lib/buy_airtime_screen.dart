import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';


class BuyAirtimeScreen extends StatefulWidget {
  const BuyAirtimeScreen({super.key});

  @override
  State<BuyAirtimeScreen> createState() => _BuyAirtimeScreenState();
}

class _BuyAirtimeScreenState extends State<BuyAirtimeScreen> {
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
    return AspectRatio(
      aspectRatio:3/2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Center(child:  Text("Buy Airtime")), backgroundColor: Colors.purple),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children:[
                     const Text("Enter a phone number to buy airtime"),
                    const  SizedBox(height: 50),
                    
                       const  TextField(
                        
                        cursorColor:Colors.purple,
                          decoration: InputDecoration(
                           focusedBorder:OutlineInputBorder(borderSide:const BorderSide(color:Colors.purple,)),
                            hintStyle: TextStyle(fontSize: 14),
                            hintText: ' Enter Phone Number ',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                                color: Colors.purple,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                 
                   SizedBox(height:150),
                   
                        Padding(
                          padding: const EdgeInsets.only(right:35),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width:200),
                              SizedBox(height:50, width:100,
                                child: ElevatedButton( onPressed: () {},
                                  child: const Text(
                                    "Contacts",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                     
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                      ),
                              ),
                       const SizedBox(width:30),
                       SizedBox(height:50, width:100,
                         child: ElevatedButton( onPressed: () {},
                              child: const Text(
                                "Next",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side:BorderSide(color: Colors.grey, width: 0.9),
                                shape: RoundedRectangleBorder(
                              
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                      ),
                       )
                            ],
                          ),
                        ),
                     
                      ],
                    ),
              )
            ),
          ),
        ),
      ),
    );
  }
}
