import 'package:chipper_cash/add_cash_screen.dart';
import 'package:chipper_cash/buy_airtime_screen.dart';
import 'package:chipper_cash/pay_bills_screen.dart';
import 'package:flutter/material.dart';



class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:3/2,
      child: SafeArea(
        child: Scaffold(
             
                  appBar: AppBar(backgroundColor:Colors.purple,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.qr_code_scanner_rounded),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Icon(Icons.cancel),
                      ],
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 7, 5, 147),
                              child: Text(
                                "P",
                                style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left:20),
                                  child: Text("Peace Oladipupo", style: TextStyle( fontFamily: 'Montserrat', fontWeight:FontWeight.w300),),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.verified, color: Colors.purple),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("@ayomidepeat",
                                style: TextStyle(
                                   fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height:50, width:100,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Share Profile",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                           fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                     
                                      side:BorderSide(color: Colors.grey, width: 0.9,) 
                                    ),
                                    
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(height:50, width:100,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Colors.black,
                                         fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
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
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Divider(
                                  thickness: 7,
                                  color: Colors.grey,
                                ),
                                
                          ],
                        ),
                         const SizedBox(
                                  height: 25,
                                ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text("Current Balance"),
                                    const SizedBox(width: 80),
                                    Text("#0.00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(height:10),
                                const Divider(
                                  color: Colors.grey,
                                  thickness:0.5
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: const Text(
                                    "Money Transfers sent to this bank  accouunt number will automatically top up your Chipper wallet. Receive your salary funds from any bank account locally, directly into your Chipper wallet.",
                                style: TextStyle( fontFamily: 'Montserrat',)  ),
                                ),
                               const SizedBox(height:10),
                                const Divider(
                                  color: Colors.grey,
                                  thickness:0.5
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: RichText(
                                        text: const TextSpan(
                                          text: 'Account Number\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                             fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "6072476376",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal,
                                                  fontFamily: 'Montserrat',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), const SizedBox(
                                  width: 80,
                                ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child:  Text(
                                        "Copy",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                       style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          side: BorderSide(color: Colors.grey, width: 0.3),
                                        ),
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height:7),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: const TextSpan(
                                          text: 'Bank Name\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                           fontFamily: 'Montserrat',
                                            fontSize: 20,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "9 Payment Service Bank",
                                              
                                              style: TextStyle(
                                                 fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child:  Text(
                                        "Copy",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      
                                       style: ElevatedButton.styleFrom(
                                        side:BorderSide(color:Colors.grey),
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                             side: BorderSide(width:0.3, color:Colors.grey),
                                          ),
                                         
                                        ),
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height:10),
                                 const Divider(
                                  thickness: 5,
                                  color: Color.fromARGB(255, 225, 221, 221),
                                ),
                                Column(
                                   crossAxisAlignment:CrossAxisAlignment.start,
                                  children:[
                                 
                                 
                                  TextButton( onPressed: (){Navigator.push (context,MaterialPageRoute(builder: (context)=>AddCashScreen(),));},child: RichText(
                                      text: const TextSpan(
                                        text: 'Add Cash\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Transfer cash from your bank into Chipper",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                               fontFamily: 'Montserrat',
                                            ),
                                          )
                                        ],
                                      ),
                                    ),), 
                                    SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Cash Out\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Transfer cash from your Chipper into your bank account",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                               fontFamily: 'Montserrat',
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Check Rates\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "See current foreign exchange rates",
                                            style: TextStyle(
                                              color: Colors.black,
                                               fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider (
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){Navigator.push (context,MaterialPageRoute(builder: (context)=>BuyAirtimeScreen(),));},child: RichText(
                                      text: const TextSpan(
                                        text: 'Buy Airtime\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                           fontFamily: 'Montserrat',
                                          fontSize: 20,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Buy discounted airtime with your Chipper balance  \t",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                               fontFamily: 'Montserrat',
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "2% OFF",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                               fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(((context) =>PayBillsScreen()))));},child: RichText(
                                      text: const TextSpan(
                                        text: 'Pay Bills\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Pay your bills with your Chipper balance  \t",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Zero fees",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                               fontFamily: 'Montserrat',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Connected Merchants\n',
      
                                        style: TextStyle(
                                           fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Connect Merchants to your account for seamless purchases",
                                            
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                               fontFamily: 'Montserrat',
                                            ),
                                          ),
                                         
                                        ],
                                      ),
                                    ),),
                                    SizedBox(height:10),
                                    const Divider(
                                 thickness: 5,
                                  color: Color.fromARGB(255, 220, 220, 220),
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Personal\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Sign into your account using multiple phone numbers and emails",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                               fontFamily: 'Montserrat',
                                            ),
                                          ),
                                         
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Payment Methods\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Add multiple cards and bank accounts",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                               fontFamily: 'Montserrat',
                                              fontSize: 14,
                                            ),
                                          ),
                                         
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Transfer Limits\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Check money transfer limits",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                               fontFamily: 'Montserrat',
                                            ),
                                          ),
                                         
                                        ],
                                      ),
                                    ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Settings\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                           
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Control your notification and security settings",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                               fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          
                                        ],
                                      ),
                                    ),), const SizedBox(height:10),
                                    const Divider(
                                 thickness: 5,
                                  color: Color.fromARGB(255, 230, 228, 228),
                                ),
                                TextButton( onPressed: (){},child: RichText(
                                      text: const TextSpan(
                                        text: 'Verification Status\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                           fontFamily: 'Montserrat',
                                        ),
                                        children: [
                                          
                                          TextSpan(
                                            text: "Verified",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),),],),
                               SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child:Row(
                                  children: [
                                    Text("Follow us on Instagram"),
                                  ],
                                ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child:Row(
                                  children: [
                                    Text("Follow us on Youtube"),
                                  ],
                                ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
                                ),
                                TextButton( onPressed: (){},child:Row(
                                  children: [
                                    Text("Follow us on Twitter"),
                                  ],
                                ),),SizedBox(height:10),
                                    const Divider(
                                 thickness:0.5,
                                  color: Colors.grey,
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
