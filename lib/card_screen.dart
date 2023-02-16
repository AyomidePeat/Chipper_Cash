import 'package:flutter/material.dart';


class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:3/2,
      child: SafeArea(
        child: Scaffold(
           // appBar: AppBar(backgroundColor: Colors.purple),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                const  SizedBox(
                    height:50,
                    width:50,
                  ),
                  SingleChildScrollView(
                    child: Column(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "The Chipper Card",
                          textAlign:TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          
                        ),SizedBox(height:10), const Text(
                      "Built for Your Digital Life",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign:TextAlign.center,
                    ),SizedBox(height:15),
                    Column(crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: const [ Icon(
                              Icons.money_sharp,
                              color: Colors.purple,
                            ), SizedBox(width:10),
                            Text(
                              "5% Cash Back",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                           
                          ],
                        ),
                        const Text(
                          "For a limited time, automatically earn 5% back from all qualifying purchases",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          
                        ),
                      ],
                    ),SizedBox(height:15),
                    Column(crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.web,
                              color: Colors.purple,
                            ),
                            SizedBox(width:10),
                            Text(
                              "Shop Globally",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              
                            ),
                            
                          ],
                        ),
                        const Text(
                          "Use your Chipper Card for online purchases anywhere Visa cards are accepted",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        
                        ),
                      ],
                    ),SizedBox(height:15),
                    Column( crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
       Icon(
                              Icons.phone_iphone,
                              color: Colors.purple,
                            ), SizedBox(width:10,),
                            Text(
                              "Digitally Native",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.right,
                            ),
                           
                          ],
                        ),
                        const Text(
                          "A digital card for your digital life",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                         // textAlign: TextAlign.right,
                        ),
                      ],
                    ),SizedBox(height:15),
                    Column(crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                                                  Icon(
                              Icons.pie_chart_sharp,
                              color: Colors.purple,
                            ),
                            SizedBox(width:10),
                            Text(
                              "Budget Effectively",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.right,
                            ),
      
                          ],
                        ),
                        const Text(
                          "Limit spending by only using the amount uploaded to your card",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                         // textAlign: TextAlign.right,
                        ),
                      ],
                    ),SizedBox(height:15),
                    Column(crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                             Icon(
                              Icons.pie_chart_sharp,
                              color: Colors.purple,
                            ),
                            SizedBox(width:10),
                            Text(
                              "NGN and USD Cards",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              
                            ),
                           
                          ],
                        ),
                        const Text(
                          "Create digital cards denominated in Naira (NGN), US Dollar(USD), or both",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                         // textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                      ],
                    ),
                  ),
                 
                  Center(
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                SizedBox(height:10),
                           SizedBox(height:30, width:500,
                             child: ElevatedButton( onPressed: () {},
                              child: const Text(
                                "Claim Your Card",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                shape: RoundedRectangleBorder(
                                 
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                                     ),
                           ),
                      ],
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
