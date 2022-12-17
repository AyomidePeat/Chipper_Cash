import 'package:flutter/material.dart';


class ReferralCodeScreen extends StatefulWidget {
  const ReferralCodeScreen({super.key});

  @override
  State<ReferralCodeScreen> createState() => _ReferralCodeScreenState();
}

class _ReferralCodeScreenState extends State<ReferralCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple,),
        body: Center(
          child: Column(
            children: [SizedBox(height:25),
              const Text("Please enter a referral\n code"),
              const SizedBox(height: 20),
             SizedBox(
                width: 100, height: 40,
                child: const TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: 'Referal Code ',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
            
                 SizedBox(height: 50, width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Enter",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                   side: BorderSide(width: 0, color: Colors.grey)
                                   ),
                              ),
                  ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
