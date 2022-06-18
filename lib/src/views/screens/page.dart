import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../const/const.dart';
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
    return Stack(
      children: [
        // const BuildBackground(
        //   viewLogo: false,
        // ),
        Scaffold(
          appBar: (PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0, left: 10, right: 10),
              child: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text(
                  _selectedIndex == 0
                      ? "Home"
                      : _selectedIndex == 1
                          ? "Carre"
                          : _selectedIndex == 2
                              ? "Chat"
                              : "Notification",
                  style: themeData.textTheme.bodyText2!.copyWith(
                    color: kDoniel,
                    fontSize: 26,
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.profile),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: kDoniel,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          bottomNavigationBar: ScrolHide(
            controller: controller,
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    child: const Icon(AntDesign.home),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    // child: Image.asset(
                    //   Assets.chat,
                    // ),
                  ),
                  label: "Carre",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    // child: Image.asset(
                    //   Assets.historique,
                    // ),
                  ),
                  label: "Chat",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    // child: Image.asset(
                    //   Assets.telephone,
                    // ),
                  ),
                  label: "Notification",
                ),
              ],
              onTap: _onTappedBar,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              currentIndex: _selectedIndex,
              selectedItemColor: kDoniel,
              unselectedItemColor: kBlackColor,
              unselectedLabelStyle: themeData.textTheme.bodyText2,
              selectedLabelStyle: themeData.textTheme.bodyText2,
            ),
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Home(controller: controller),
              Carre(controller: controller),
              Chat(controller: controller),
              NotificationPage(controller: controller)
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
