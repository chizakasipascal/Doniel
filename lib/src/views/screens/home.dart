import 'package:doniel/src/const/assets.dart';
import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      children: [
        CardPost(size: size),
        CardPost(size: size),
        CardPost(size: size)
      ],
    );

    // DefaultTabController(
    //   length: 3,
    //   child: NestedScrollView(
    //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //       return <Widget>[
    //         SliverAppBar(
    //           expandedHeight: 30.0,
    //           floating: false,
    //           pinned: true,
    //           backgroundColor: Colors.transparent,
    //           elevation: 0.0,
    //           flexibleSpace: FlexibleSpaceBar(
    //             centerTitle: true,
    //             title: Text(
    //               "Doniel App",
    //               style: themeData.textTheme.headline6!.copyWith(
    //                 fontWeight: FontWeight.bold,
    //                 color: kDoniel,
    //               ),
    //             ),
    //             background: const Text(''),
    //           ),
    //         ),
    //         // SliverPersistentHeader(
    //         //   delegate: _SliverAppBarDelegate(
    //         //     const TabBar(
    //         //       labelColor: kGreyColor,
    //         //       unselectedLabelColor: Colors.grey,
    //         //       tabs: [
    //         //         Tab(
    //         //           text: "Web design",
    //         //         ),
    //         //         Tab(text: "Favorite"),
    //         //         Tab(
    //         //           text: "Branding",
    //         //         ),
    //         //       ],
    //         //     ),
    //         //   ),
    //         //   pinned: true,
    //         // ),
    //       ];
    //     },
    //     body: ListView(
    //       controller: controller,
    //       children: [
    //         CardPost(size: size),
    //         CardPost(size: size),
    //         CardPost(size: size)
    //       ],
    //     ),
    //   ),
    // );
  }
}

class CardPost extends StatelessWidget {
  final String description, name, dateTime, imageMain, imageSub, imageSub2;

  const CardPost({
    Key? key,
    required this.size,
    this.description =
        ',Reloaded 1 of 968 libraries in 1,745ms.Reloaded 1 of 968 libraries in 1,610ms.Reloaded 1 of 968 libraries in 1,807ms.',
    this.name = "Jerome Bell",
    this.dateTime = "August 15 at 18:36",
    this.imageMain = Assets.cute,
    this.imageSub = Assets.cute,
    this.imageSub2 = Assets.cute,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        image: DecorationImage(
                          image: AssetImage(imageMain),
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
                      name,
                      style: themeData.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      dateTime,
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
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: themeData.textTheme.bodyText2!.copyWith(
                color: kBlackColor,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: size.height * .3,
                    width: size.width * .7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageSub),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * .15,
                        width: size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imageSub2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: size.height * .15,
                        width: size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imageSub2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                CardPostButtom(),
                CardPostButtom(
                  description: Icons.tag_faces,
                  subdescription: 95,
                ),
                CardPostButtom(
                  description: Icons.share,
                  subdescription: 99,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardPostButtom extends StatelessWidget {
  final IconData description;
  final int subdescription;
  const CardPostButtom({
    Key? key,
    this.description = AntDesign.like1,
    this.subdescription = 185,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 40,
        // width: 80,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          elevation: 0.0,
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias, // Add This
          child: MaterialButton(
            minWidth: 50.0,
            height: 40,
            //  color: kWhiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  // margin: const EdgeInsets.all(3.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Icon(
                    description,
                    size: 16,
                    color: kGreyColor,
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  subdescription.toString(),
                  style: themeData.textTheme.subtitle2!.copyWith(
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
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
