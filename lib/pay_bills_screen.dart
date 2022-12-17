import 'package:flutter/material.dart';


class PayBillsScreen extends StatefulWidget {
  const PayBillsScreen({super.key});

  @override
  State<PayBillsScreen> createState() => _PayBillsScreenState();
}

class _PayBillsScreenState extends State<PayBillsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> images =[
    " images/eko.png"
     "images/smile.jpeg",
     "images/dstv.png",
     "images/gotv.png",
     "images/ibadan.png",
     "images/ikeja.jpeg",
     "images/ph.jpeg",
    " images/kano.png",
     "images/aedc.jpeg", 
     "images/jos.jpeg",
    "images/kaduna.jpeg"];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Add a Bill",
              style: TextStyle(color: Colors.black, ),
            ),
            backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
        body: Column(children:  [
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.search, size: 20, color: Colors.purple),
                    ),
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: 'Search ',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
                SizedBox(height: 15,),
       Container(height:500, width:300,
         child: GridView.builder(
                    primary: false,
                   itemCount:12,
                  gridDelegate :SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 2,
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,),
                   itemBuilder:(BuildContext context, int index){
                    return Container(height: 30, width: 30, child: Image.asset(images[index])); },
                   
                    
                  
                
                ),
       )
      
               ] 
      ),
          
       
       ),
    );
  }
}
