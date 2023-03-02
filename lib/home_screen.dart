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
          centerTitle: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile_Screen(),
                      ));
                },
                icon: const Icon(
                  Icons.person_outline_sharp,
                  color: Colors.blue,
                  // ), //label:Text("Profile", style: TextStyle(color: Colors.blue)
                ),
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(child: DetailsContainer());
                        });
                  },
                  child: Row(
                    children: [
                      const Text("My Cash",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                          Icon(Icons.keyboard_arrow_down_sharp, color:Colors.blue,)
                    ],
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.help,
                  color: Colors.grey,
                ), //label:Text("Help", style: TextStyle(color: Colors.blue)
                //),
              ),
            ],
          ),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Column(
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PayBillsScreen(),
                                ));
                          },
                          icon: Icon(Icons.money),
                          label: Text("Pay Bills"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.all(20),
                          ),
                        ),
                        SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DataBundleScreen(),
                                ));
                          },
                          icon: Icon(Icons.wifi),
                          label: Text("Data Bundle"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 229, 190, 35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.all(20),
                          ),
                        ),
                        SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BuyAirtimeScreen(),
                                ));
                          },
                          icon: Icon(Icons.phone),
                          label: Text("Buy Airtime"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 35, 143, 41),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.all(20),
                          ),
                        ),
                        SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddCashScreen(),
                                ));
                          },
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
                const SizedBox(height: 50, width: 50),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    "\nNever share your pin,\npassword, or OTP with anyone",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              )
                            ]),
                      ),
                      Icon(Icons.lock, color: Color.fromARGB(255, 240, 217, 8)),
                    ],
                  ),
                ),
                Expanded(
                    child: SizedBox(
                        /*height: MediaQuery.of(context).size.height*0.7)*/)),
                Container(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Send",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 111, 7, 208),
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RequestScreen(),
                                  ));
                            },
                            child: const Text(
                              "Request",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 7,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(width: 0.5, color: Colors.grey)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15)
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(3)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(children: [
                const SizedBox(height:15),
            const Text("Balance: #0.00",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(height:5),
            const Divider(thickness: 1.5),
              SizedBox(height:5),
            const Text("Chipper Account Number ",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat')),
                      SizedBox(height:5),
            const Text("09XXXXXXX",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat')),
                      SizedBox(height:5),
            const Text("9 Payment Service Bank",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat')),
                      SizedBox(height:5),
            const Text(
                "Money Transfers sent to this bank  accouunt number will automatically top up your Chipper wallet. Receive your salary funds from any bank account locally, directly into your Chipper wallet.",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                )),
                  SizedBox(height:5),
            const Divider(thickness: 1.5),
              SizedBox(height:5),
            const Text("Share Details",
                style: TextStyle(
                  color: Color.fromARGB(255, 111, 7, 208),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            const Divider(thickness: 1.5),
            SizedBox(height:40,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddCashScreen(),
                      ));
                },
                
                   child: Text( 'Add Cash\n',
                    
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      
                    ))),
            ),
                    SizedBox(height:5),
                    Text(
                      
                          "Transfer cash from your bank into Chipper",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                
              
             
          
            SizedBox(height: 10),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            SizedBox(height:40,child:TextButton(
              onPressed: () {},
              child:  Text(
                   'Cash Out\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                  )))),
                  SizedBox(height:5),
                  Text(
                     
                          "Transfer cash from your Chipper into your bank account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                      )),
              
            SizedBox(height: 10),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
                     SizedBox(height:40,child:   TextButton(
              onPressed: () {},
              child: Text(
                'Check Rates\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                  )))),
                  SizedBox(height:5),
                      Text(
                          "See current foreign exchange rates",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                 
               
              
            
          ])),
        ));
  }
}
