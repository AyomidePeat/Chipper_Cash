import 'package:chipper_cash/card_screen.dart';
import 'package:chipper_cash/earn_screen.dart';
import 'package:chipper_cash/home_screen.dart';
import 'package:chipper_cash/invest_sreen.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int currentPage = 0;
  changePage(int page) {
    pageController.jumpToPage(page);
    setState(
      () {
        currentPage = page;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(fontFamily: 'Montserrat'),
      home: DefaultTabController(
        
        length: 4,
        child: SafeArea(
          child: Scaffold(
            body: PageView(
              controller: pageController,
              physics:const  NeverScrollableScrollPhysics(),
              children: const [
                HomeScreen(),
                EarnScreen(),
                InvestScreen(),
                CardScreen()
              ],
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white, width: 1))),
              child: TabBar(
                  
                  onTap: changePage,
                 
                  tabs: [
                    Tab(
                      child: Icon(
                        Icons.home,
                        color: currentPage == 0 ? Colors.purple : Colors.grey,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.money,
                        color: currentPage == 1 ? Colors.purple : Colors.grey,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.attach_money_sharp,
                        color: currentPage == 2 ?Colors.purple : Colors.grey,
                        
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.credit_card_sharp,
                        color: currentPage == 3 ? Colors.purple : Colors.grey,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
