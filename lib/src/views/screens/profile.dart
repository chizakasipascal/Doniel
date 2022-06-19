import 'package:doniel/src/const/assets.dart';
import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                // centerTitle: true,
                // title: Text(
                //   "@username",
                //   style: themeData.textTheme.bodyText1,
                // ),
                background: BackgroundProfil(),
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: _SliverAppBarDelegate(
            //     const TabBar(
            //       labelColor: kDoniel,
            //       indicatorWeight: 1,
            //       indicatorColor: kDoniel,
            //       unselectedLabelColor: kGreyColor,
            //       tabs: [
            //         Tab(text: "Media"),
            //         Tab(text: "Status"),
            //         Tab(text: "Bio"),
            //       ],
            //     ),
            //   ),
            //   pinned: true,
            // ),
          ];
        },
        body: ListView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Icon(
                    AntDesign.home,
                    color: kGreyColor,
                  ),
                  Text(
                    'Lives in ',
                    style: themeData.textTheme.bodyText2,
                  ),
                  Text(
                    'Goma.DRC',
                    style:
                        themeData.textTheme.bodyText2!.copyWith(color: kDoniel),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BackgroundProfil extends StatelessWidget {
  const BackgroundProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 7),
                image: const DecorationImage(
                  image: AssetImage(Assets.cute),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const Icon(
                  AntDesign.pluscircle,
                  color: kDoniel,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Denis Taukin',
          style: themeData.textTheme.headline4!.copyWith(
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Mobile apps and E-commerce UI/UX designer,working worldwide',
          textAlign: TextAlign.center,
          style: themeData.textTheme.bodyLarge!.copyWith(
              height: 1.5,
              color: kBlackColor.withOpacity(.7),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              //  width: 60,
              child: Column(
                children: [
                  Text(
                    '34',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Friends', style: themeData.textTheme.bodyText2),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              // width: 60,
              child: Column(
                children: [
                  Text(
                    '1,500',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Followers', style: themeData.textTheme.bodyText2),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              //  width: 60,
              child: Column(
                children: [
                  Text(
                    '274',
                    style: themeData.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text('Followings', style: themeData.textTheme.bodyText2),
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
        ),
        Container(
          height: 1,
          color: kGreyColor,
        ),
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
