import 'package:flutter/material.dart';
class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> images =["https://images.app.goo.gl/gDomcYg3fxotnSQFA",
  "https://images.app.goo.gl/pskTy64dkbEqfR4u8",
"https://smile.com.ng/scp/images/smile-logo.svg",
"https://images.app.goo.gl/kpVSq12dRab2oAnT7",
"https://images.app.goo.gl/WSY6fnwTRSfXXJHX8",
"https://images.app.goo.gl/PLa8BKgDitZBsF3p9",
"https://images.app.goo.gl/5nGxeYRi2UfNyJ9j8",
"https://images.app.goo.gl/gT7oaijSZ7bgsSrJ7",
"https://images.app.goo.gl/59W3HfcS4RAykbMB7",
"https://images.app.goo.gl/NqnDRq81NXC8gEot9",
"https://smile.com.ng/scp/images/smile-logo.svg",
"https://images.app.goo.gl/kpVSq12dRab2oAnT7",
"https://images.app.goo.gl/kpVSq12dRab2oAnT7",
"https://images.app.goo.gl/kpVSq12dRab2oAnT7",];
    return Container(
      child:  GridView.builder(
                primary: false,
               itemCount:12,
              gridDelegate :SliverGridDelegateWithFixedCrossAxisCount(  
                crossAxisCount: 2,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,),
               itemBuilder:(BuildContext context, int index){return Image.network(images[index]); },
               
                
              
            
            )
    
    );
  }
}