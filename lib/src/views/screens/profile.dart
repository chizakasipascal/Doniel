import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

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
            Column(
              children: const [Text('data')],
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
