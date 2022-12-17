import 'package:chipper_cash/add_cash_screen.dart';
import 'package:chipper_cash/buy_airtime_screen.dart';
import 'package:chipper_cash/data_bundle.dart';
import 'package:chipper_cash/pay_bills_screen.dart';
import 'package:chipper_cash/profile_screen.dart';
import 'package:chipper_cash/request_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     
 Container container = Container();
 

    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
         centerTitle:false,
         elevation:0,
          
           
              title: 
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  
                   children: [
                    
                    IconButton(
                      onPressed: () {Navigator.push (context,MaterialPageRoute(builder: (context)=>Profile_Screen(),));},
                      icon: const Icon(
                        Icons.person_outline_sharp,
                        color: Colors.blue,
                       // ), //label:Text("Profile", style: TextStyle(color: Colors.blue)
                      ),
                    ),
                   TextButton(
                onPressed: () {
               // container;
                },
                child: const Text("My Cash",
                    style: TextStyle(
                      fontSize: 17,
                      color:Colors.black,
                      fontWeight: FontWeight.bold,
                    ))),
                 
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.help,
                color: Colors.grey,
              ), //label:Text("Help", style: TextStyle(color: Colors.blue)
            //),
          
             
        ),],
                ),
              ),
            
           
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {Navigator.push (context, MaterialPageRoute(builder: (context)=>PayBillsScreen(),));},
                      icon: Icon(Icons.money),
                      label: Text("Pay Bills"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                    ), SizedBox(width:15),
                    ElevatedButton.icon(
                      onPressed: () {Navigator.push (context, MaterialPageRoute(builder: (context)=>DataBundleScreen(),));},
                      icon: Icon(Icons.wifi),
                      label: Text("Data Bundle"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 229, 190, 35),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                    ),SizedBox(width:15),
                    ElevatedButton.icon(
                      onPressed: () {Navigator.push (context,MaterialPageRoute(builder: (context)=>BuyAirtimeScreen(),));},
                      icon: Icon(Icons.phone),
                      label: Text("Buy Airtime"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 35, 143, 41),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                    ),SizedBox(width:15),
                    ElevatedButton.icon(
                      onPressed: () {Navigator.push (context,MaterialPageRoute(builder: (context)=>AddCashScreen(),));},
                      icon: Icon(Icons.attach_money),
                      label: Text("Add Cash"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           const  SizedBox(height: 50, width: 50),
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 5, 2, 80),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(3),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Protect Your Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        
                        children: [
                          TextSpan(
                              text:
                                  "\nNever share your pin,\npassword, or OTP with anyone",style: TextStyle( fontFamily: 'Montserrat',
                          color: Colors.white,
                         
                          fontWeight: FontWeight.normal,
                          fontSize: 14,),)
                        ]),
                  ),
                Icon(Icons.lock, color:Color.fromARGB(255, 240, 217, 8)),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
                    /*height: MediaQuery.of(context).size.height*0.7)*/)),
            Container(
              padding: const EdgeInsets.only(left:12, right:12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               
                children: [
                  Expanded(
                    child: SizedBox(height:50, width:100,
                      child: ElevatedButton(
                        
                          onPressed: () {},
                          
                          child: const Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          elevation:7,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),),),
                    ),
                  ),SizedBox(width:15),
                  Expanded(
                    child: SizedBox(height:50, width:100,
                      child: ElevatedButton(
                          onPressed: () {Navigator.push (context,MaterialPageRoute(builder: (context)=>RequestScreen(),));},
                          child: const Text(
                            "Request",
                            
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),style: ElevatedButton.styleFrom(
                          elevation:7,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(width:0.5, color:Colors.grey)
                          ),),),
                    ),
                  ),
                SizedBox(height:15)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
