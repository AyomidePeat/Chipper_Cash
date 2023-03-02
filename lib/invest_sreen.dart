import 'package:flutter/material.dart';


class InvestScreen extends StatefulWidget {
  const InvestScreen({super.key});

  @override
  State<InvestScreen> createState() => _InvestScreenState();
}

class _InvestScreenState extends State<InvestScreen> {
  @override
  Widget build(BuildContext context) {
  var children2 = [
                          Row(
                            children: const [
                             Icon(Icons.pie_chart, color: Colors.purple),
                              SizedBox(width:10),
                              Text(
                              "Fractional Shares",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              
                            ],
                          ),Row(
                            children: [SizedBox(width:32),
                              const Text(
                                 "Start now with as little as \$1 USD\n(approx. #436.60)",
                               style: TextStyle(fontFamily: 'Montserrat',  fontSize: 11,),
                              ),
                            ],
                          ),
                        ];
  return SafeArea(
    child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Stocks Investing for Everyone",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                             fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ), 
                        SizedBox(height:25),
                          Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: children2,
                        ),SizedBox(height:15),
                          Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.percent, color: Colors.purple),
                                SizedBox(width:10),
                                Text(
                                 "Lowest Commissions",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                
                              ],
                            ),Row(
                              children: [SizedBox(width:32),
                                const Text(
                                   "Invest More, save on fees",
                                 style: TextStyle(fontFamily: 'Montserrat',  fontSize: 11,),
                                ),
                              ],
                            ),
                          ],
                        ),SizedBox(height:15),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.network_cell, color: Colors.purple),
                                SizedBox(width:10),
                                Text(
                                  "Invest in the best",
                                  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    
                                  ),
                                ),
                                
                              ],
                            ),Row(
                              children: [SizedBox(width:32),
                                const Text(
                                  "Own top US stocks like Amazon, Nike, Tesla, McDonalds & more",
                                 style:TextStyle(fontFamily: 'Montserrat',  fontSize: 11,),
                                ),
                              ],
                            ),
                          ],
                        ),SizedBox(height:15),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.bolt , color: Colors.purple),
                                SizedBox(width:10),
                                Text(
                                  "Trade Instantly",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                
                              ],
                            ),Row(
                              children: [SizedBox(  width:32),
                                const Text(
                                  "Fastest trade execution & confirmation",
                                 style: TextStyle(fontFamily: 'Montserrat',  fontSize: 11,),
                                ),
                              ],
                            ),
                          ],
                        ),SizedBox(height:15),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.security , color: Colors.purple),
                                SizedBox(width:10),
                                Text(
                                  "Account Protection",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                
                              ],
                            ),Row(
                              children: [ SizedBox(width: 32,),
                                const Text(
                                  "SIPC protection of securities and cash up to \$500,000 USD",
                                    style: TextStyle(fontFamily: 'Montserrat',  fontSize: 11,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:80),
                 Container(
                   child: Row(
                     children: [
                       Expanded(
                         child: SizedBox(height:50, width:600,
                           child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Begin Investing",
                                  style: TextStyle(
                                    fontSize:18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 111, 7, 208),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                         ),
                       ),
                     ],
                   ),
                 ),
                  
                ],
              ),
            ),
          ),
       
      ),
  );
  }
}
