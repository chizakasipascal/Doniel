import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late final TabController controllerForMainTabVarView =
      TabController(length: 3, vsync: this, initialIndex: 0);
  late final TabController topTabBarController =
      TabController(length: 3, vsync: this, initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: size.height * 0.5,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: const EdgeInsets.only(bottom: 0),
            title: TabBar(
              indicatorColor: kDoniel,
              indicatorWeight: 1.5,
              labelColor: kDoniel,
              controller: controllerForMainTabVarView,
              labelStyle: themeData.textTheme.bodyText2!
                  .copyWith(fontWeight: FontWeight.bold),
              unselectedLabelStyle: themeData.textTheme.bodyText2,
              unselectedLabelColor: kWhiteColor,
              onTap: (_) {},
              tabs: const [
                Tab(
                  text: "Post",
                ),
                Tab(
                  text: "Fichier",
                ),
                Tab(
                  text: "Share",
                ),
              ],
            ),
            background: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/cute.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverFillRemaining(
            child: Column(
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: TabBarView(
                  controller: controllerForMainTabVarView,
                  children: const [
                    Center(child: Text(' MyStful1 Page1')),
                    Center(child: Text(' MyStful1 Page2')),
                    Center(child: Text(' MyStful2 Page3')),
                  ],
                ),
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
