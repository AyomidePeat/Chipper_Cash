import 'package:flutter/material.dart';


class ReferralHistoryScreen extends StatefulWidget {
  const ReferralHistoryScreen({super.key});

  @override
  State<ReferralHistoryScreen> createState() => _ReferralHistoryScreenState();
}

class _ReferralHistoryScreenState extends State<ReferralHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              bottom: TabBar(
                indicatorColor: Colors.white,tabs: [
                        Tab(
                          icon: Text(
                            "Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Tab(
                          icon: Text(
                            "Pending",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                      ]),
              title:
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text("Referral History",
                          style: TextStyle(fontFamily: "Montserrat")),
                          SizedBox(width:90),
                      Icon(Icons.upload, color: Colors.purple),
                    ],
                  ),
                
            ),
            body: TabBarView(children: [
              Column(children: [
                 Image.asset('images/hand.png',height: 200, width: 200,),
                SizedBox(
                  
                  height: 10,
                ),
                Text("You have no completed referrals"),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {},
                    child: Text("View your pending referrals",
                        style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat"),),),
            ]),
              Column(children: [
                Image.asset('images/hand.png',height: 300, width: 300,),
                SizedBox(
                  height: 10,
                ),
                Text("You have no pending referrals"),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {},
                    child: Text("Refer a friend and earn",
                        style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat"),),),
            ]),
      
            ])),
      ),
    );
  }
}
