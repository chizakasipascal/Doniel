import 'package:flutter/material.dart';

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
                    ),
                  ),
                )
              : null,
          bottomNavigationBar: ScrolHide(
            controller: controller,
            child: BottomNavigationBar(
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
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Center(
                child: ListView.builder(
                  controller: controller,
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return const ListTile(
                      title: Text("sss"),
                    );
                  },
                ),
              ),
              const Center(child: Text('Cgat')),
              const Center(child: Text('h')),
              const Center(child: Text('t')),
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
