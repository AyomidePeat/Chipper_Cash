import 'package:chipper_cash/screen_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lock/flutter_app_lock.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  @override


  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
         
            color:Colors.white
        ),
        child: OtpScreen(),
      )),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<String> currentPin = ["", "", "", ""];
  
  List<String> Pin = ['1','2','3','4'];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );

  int pinIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(children: <Widget>[
      Expanded(
        child: Container(
            alignment: Alignment(0, 0.5),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildSecurityText(),
                SizedBox(
                  height: 25.0,
                ),
                 buildPinRow(),
                  SizedBox(
                  height: 20.0,
                ),
               
                  SizedBox(height:40, width:250,
                    child: ElevatedButton(
                      
                        onPressed: () {
                          const error = SnackBar(
          content: Text('FingerPrint Authentication is Currently Not Available',textAlign: TextAlign.center ),
          backgroundColor: Color.fromARGB(255, 207, 69, 196),
          elevation: 15,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(error);
                        },
                        
                        child: const Text(
                          "Use Fingerprint",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.normal),
                        ),style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        elevation:7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),),),
                  ),
               
              ],
            )),
      ),
     // SizedBox(height: 5,),
      buildNumberPad(),
    
      SizedBox(height: 5,),
      TextButton(onPressed:(){const error = SnackBar(
          content: Text('Enter any 4 digits',textAlign: TextAlign.center),
          backgroundColor: Color.fromARGB(255, 207, 69, 196),
          elevation: 15,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(error);},
      child:Text("Forgot PIN?", style:TextStyle(color:Colors.purple,))),
    ]);
  }

  buildNumberPad() {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 SizedBox(width:30), KeyboardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup("1");
                    },
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 2,
                    onPressed: () {pinIndexSetup("2");},
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 3,
                    onPressed: () {pinIndexSetup("3");},
                  ),SizedBox(width:30),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 SizedBox(width:30), KeyboardNumber(
                    n: 4,
                    onPressed: () {pinIndexSetup("4");},
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 5,
                    onPressed: () {pinIndexSetup("5");},
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 6,
                    onPressed: () {pinIndexSetup("6");},
                  ),SizedBox(width:30),
                ]),
            Row(
             
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                SizedBox(width:30),  KeyboardNumber(
                    n: 7,
                    onPressed: () {pinIndexSetup("7");},
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 8,
                    onPressed: () {pinIndexSetup("8");},
                  ),SizedBox(width:30),
                  KeyboardNumber(
                    n: 9,
                    onPressed: () {pinIndexSetup("9");},
                  ),SizedBox(width:30),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                 SizedBox(width:20), Container(
                     width: 30,
                      child: MaterialButton(
                        height: 50,
                       
                        onPressed: (){
                       
                                    if (pinIndex==4){
                       
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenLayout()));
                        }
                        else{ const error = SnackBar(
            content: Text('Incorrect PIN'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(error);}
                        },
                       
                        child:Icon(Icons.send,color:Colors.grey,),
                      )), SizedBox(width:30),
                  KeyboardNumber(
                    n: 0,
                    onPressed: () {pinIndexSetup("0");},
                  ),SizedBox(width:30),
                  
                  Container(
                      width: 60,
                      child: MaterialButton(
                        height: 60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onPressed: (){
                          clearPin();
                        },
                        child:Icon(Icons.clear,color:Colors.grey,),
                      )),
                ])
          ]),
    ));
  }
  clearPin(){
    if(pinIndex==0)
    pinIndex=0;
    else if (pinIndex == 4){
      setPin(pinIndex, "");
      currentPin[pinIndex-1]="";
      pinIndex--;
    }else{
      setPin(pinIndex,"");
      currentPin[pinIndex-1]="";
      pinIndex--;
    }
  }
pinIndexSetup(String text){
  if (pinIndex==0)
  pinIndex=1;
  else if(pinIndex <4)
  pinIndex++;
  setPin(pinIndex, text);
  currentPin[pinIndex-1]=text;
 String strPin = '';
  currentPin.forEach((e){
    strPin +=e;
  });
  if(pinIndex ==4)
  print(strPin);
  

  return strPin;
 
}
setPin(int n, String text){
  switch(n){
    case 1:
    pinOneController.text = text; break;
    case 1:
    pinOneController.text = text; break;
    case 2:
    pinTwoController.text = text; break;
    case 3:
    pinThreeController.text = text; break;
    case 4:
    pinFourController.text = text; break;
  
  }
}
  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinOneController,
        ),
        SizedBox(width:20),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinTwoController,
        ),
        SizedBox(width:20),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinThreeController,
        ),
        SizedBox(width:20),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinFourController,
        ),
      ],
    );
  }

  buildSecurityText() {
    return Text(
      "Enter your Chipper PIN",
      style: TextStyle(
        color: Colors.black,
        fontSize: 21.0,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  buildExitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            height: 50.0,
            minWidth: 50.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.clear, color: Colors.purple),
          ),
        )
      ],
    );
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PINNumber(
      {required this.textEditingController, required this.outlineInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 15,
    height:15,
     decoration: BoxDecoration( shape:BoxShape.circle, color:Colors.transparent,  ),
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
         contentPadding: EdgeInsets.all(8 ),
          border: OutlineInputBorder(borderRadius:BorderRadius.circular(90), borderSide:BorderSide(color:Colors.transparent),),
          filled: true,
         fillColor: Colors.purple.withOpacity(0.3),
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.purple,
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  const KeyboardNumber({required this.n, required this.onPressed, super.key});
  final int n;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      alignment: Alignment.center,
      child: MaterialButton(
          padding: EdgeInsets.all(8.0),
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          height: 50,
          child: Text("$n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20 * MediaQuery.of(context).textScaleFactor,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
