import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
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
                    // child: Image.asset(
                    //   Assets.home,
                    // ),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    // child: Image.asset(
                    //   Assets.notification,
                    // ),
                  ),
                  label: "Notification",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: height,
                    // child: Image.asset(
                    //   Assets.user,
                    // ),
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
          body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  const SliverAppBar(
                    expandedHeight: 400.0,
                    floating: false,
                    pinned: false,
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      // title: Text(
                      //   "@username",
                      //   style: themeData.textTheme.bodyText1,
                      // ),
                      background: BackgroundProfil(),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      const TabBar(
                        labelColor: kGreyColor,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: "Web design",
                          ),
                          Tab(text: "Favorite"),
                          Tab(
                            text: "Branding",
                          ),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
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
          ),
        ),
      ],
    );
  }
}

class BackgroundProfil extends StatelessWidget {
  const BackgroundProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/cute.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Fidele fidgBa',
          style: themeData.textTheme.bodyText2!.copyWith(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Founder and UI&UX Designer\nat FidbaGraphics',
          textAlign: TextAlign.center,
          style: themeData.textTheme.bodyText2!.copyWith(
            height: 1.5,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Column(
                children: [
                  Text(
                    '12.1 k',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Followers', style: themeData.textTheme.caption),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: Column(
                children: [
                  Text(
                    '100',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Following', style: themeData.textTheme.caption),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: Column(
                children: [
                  Text(
                    '3k',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Tags', style: themeData.textTheme.caption),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 160,
                child: MaterialButton(
                  elevation: 0.0,
                  color: kGreyColor.withOpacity(.3),
                  onPressed: () {},
                  child: Text(
                    '+Follw',
                    style: themeData.textTheme.subtitle1!.copyWith(
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 160,
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  elevation: 10.0,
                  color: kWhiteColor,
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: kWhiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.mail,
                          size: 16,
                          color: kBlackColor,
                        ),
                        Text(
                          'Hire Me',
                          style: themeData.textTheme.subtitle1!.copyWith(
                            color: kBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
