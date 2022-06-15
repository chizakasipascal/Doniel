import 'package:flutter/material.dart';

class PageDoniel extends StatefulWidget {
  const PageDoniel({Key? key}) : super(key: key);

  @override
  State<PageDoniel> createState() => _PageDonielState();
}

class _PageDonielState extends State<PageDoniel> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  double height = 20.0;
  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // const BuildBackground(
        //   viewLogo: false,
        // ),
        Scaffold(
          appBar: (_selectedIndex == 1 ||
                  _selectedIndex == 2 ||
                  _selectedIndex == 3)
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(80.0),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0.0, left: 10, right: 10),
                      child: AppBar(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        centerTitle: true,
                        title: Text(
                          _selectedIndex == 1
                              ? "Carre"
                              : _selectedIndex == 3
                                  ? "notification"
                                  : "Chat",
                          style: const TextStyle(color: Colors.red),
                          // style: themeData.textTheme.bodyText2!
                          //     .copyWith(color: kGreyColor, fontSize: 16),
                        ),
                        actions: [
                          GestureDetector(
                            onTap: () {},
                            //  => Navigator.pushNamed(
                            //     context, Routes.notificationscreen),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        ],
                      )))
              : null,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  // child: Image.asset(
                  //   Assets.connectis,
                  // ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: height,
                  // child: Image.asset(
                  //   Assets.chat,
                  // ),
                ),
                label: "carre",
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
                label: "notification",
              ),
            ],
            onTap: _onTappedBar,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            // unselectedLabelStyle: themeData.textTheme.bodyText2,
            // selectedLabelStyle: themeData.textTheme.bodyText2,
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const <Widget>[
              Center(child: Text('Home')),
              Center(child: Text('Cgat')),
              Center(child: Text('h')),
              Center(child: Text('t')),
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
