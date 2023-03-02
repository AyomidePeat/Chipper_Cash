import 'package:chipper_cash/referral_code_screen.dart';
import 'package:chipper_cash/referral_history_screen.dart';
import 'package:flutter/material.dart';

class EarnScreen extends StatefulWidget {
  const EarnScreen({super.key});

  @override
  State<EarnScreen> createState() => _EarnScreenState();
}

class _EarnScreenState extends State<EarnScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/box.png',
                height: 100,
                width: 200,
              ),
              SizedBox(height: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'Invite Friends and\n Earn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "\nInvite your friends and we'll send you both #600.00 when your friends verify their account and send #600.00 to another Chipper Cash account. Invite our friends in the US and earn #4,000.00 when they send at least \$25 to an African country ",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 600,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 111, 7, 208),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Invite a friend",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      width: 600,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 0, color: Colors.grey)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReferralCodeScreen()));
                        },
                        child: const Text(
                          "Enter Referral Code",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      width: 600,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 0, color: Colors.grey)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ReferralHistoryScreen()));
                        },
                        child: const Text(
                          "View Referral History",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View Terms and Conditions",
                  style: TextStyle(
                    color: Color.fromARGB(255, 111, 7, 208),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
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
