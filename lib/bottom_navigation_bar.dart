import 'package:flutter/material.dart';
import 'package:sna3ya_user/ads.dart';
import 'package:sna3ya_user/favorite.dart';
import 'package:sna3ya_user/home.dart';
import 'package:sna3ya_user/my_account.dart';
import 'package:sna3ya_user/providers.dart';

class BottomNavigationBarInfo extends StatefulWidget {
  @override
  _BottomNavigationBarInfoState createState() =>
      _BottomNavigationBarInfoState();
}

class _BottomNavigationBarInfoState extends State<BottomNavigationBarInfo> {
  List<Widget> pages = [MYAccount(), Ads(), Favorite(), Providers(), Home()];
  int _selectedPage = 4;
  /*final List<Widget> _children = [
    MYAccount(),
    Ads(),
    Favorite(),
    Providers(),
    Home(),
  ];*/

  void _pageChanged(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  final _pageController = PageController(initialPage: 4);
  void navigationTapped(int page) {
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 400),
        curve: Curves.linearToEaseOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _pageChanged,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
      bottomNavigationBar: Container(
        decoration: new BoxDecoration(
          color: Colors.red,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0),
          ),
        ),
        child: BottomNavigationBar(
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          //backgroundColor: Colors.white,
          currentIndex: _selectedPage,
          onTap: navigationTapped,
          items: [
            BottomNavigationBarItem(
              icon: new ImageIcon(new AssetImage('./images/gray_account.png')),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: new ImageIcon(new AssetImage('./images/gray_ads.png')),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: new ImageIcon(new AssetImage('./images/gray_fav.png')),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: new ImageIcon(new AssetImage('./images/providers.png')),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
            BottomNavigationBarItem(
              icon: new ImageIcon(new AssetImage('./images/home.png')),
              title: Padding(padding: EdgeInsets.all(0)),
            ),
          ],
        ),
      ),
    );
  }
}
