import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
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
            SliverAppBar(
              expandedHeight: 120.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Doniel App",
                  style: themeData.textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: kDoniel,
                  ),
                ),
                background: const Text(''),
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: _SliverAppBarDelegate(
            //     const TabBar(
            //       labelColor: kGreyColor,
            //       unselectedLabelColor: Colors.grey,
            //       tabs: [
            //         Tab(
            //           text: "Web design",
            //         ),
            //         Tab(text: "Favorite"),
            //         Tab(
            //           text: "Branding",
            //         ),
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
            Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(.7)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                ),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/cute.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jerome Bell',
                              style: themeData.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: kBlackColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'August 15 at 18:36',
                              style: themeData.textTheme.subtitle2!.copyWith(
                                color: kGreyColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert,
                          color: kGreyColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
