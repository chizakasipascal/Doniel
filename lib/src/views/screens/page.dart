import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
import '../../const/assets.dart';
import '../views.dart';
import '../widgets/scroll_hide.dart';

class PageDoniel extends StatefulWidget {
  const PageDoniel({Key? key}) : super(key: key);

  @override
  State<PageDoniel> createState() => _PageDonielState();
}

class _PageDonielState extends State<PageDoniel> {
  final PageController _pageController = PageController();
  late ScrollController controller;
  int _selectedIndex = 0;
  double height = 20.0;
  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BuildBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: ScrolHide(
            controller: controller,
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    child: Image.asset(
                      Assets.home,
                    ),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    child: Image.asset(
                      Assets.notification,
                    ),
                  ),
                  label: "Notification",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    child: Image.asset(
                      Assets.user,
                    ),
                  ),
                  label: "User",
                ),
              ],
              onTap: _onTappedBar,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              currentIndex: _selectedIndex,
              selectedItemColor: kDoniel,
              unselectedItemColor: kBlackColor,
              unselectedLabelStyle: themeData.textTheme.caption,
              selectedLabelStyle: themeData.textTheme.caption,
            ),
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Home(controller: controller),
              NOtification(controller: controller),
              Profile(controller: controller),
            ],
            onPageChanged: (page) {
              setState(() {
                _selectedIndex = page;
                debugPrint(page.toString());
              });
            },
          ),
        ),
      ],
    );
  }
}
