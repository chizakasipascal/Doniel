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
          expandedHeight: size.height * 0.6,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: SizedBox(
                        height: 200,
                        width: size.width,
                        child: Material(
                          color: kWhiteColor.withOpacity(.3),
                          elevation: 2.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '+243 XXX XXX XXX',
                                      style: themeData.textTheme.bodyText2!
                                          .copyWith(
                                              color: kWhiteColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Mobile number',
                                      style: themeData.textTheme.bodyText2!
                                          .copyWith(
                                              color: kWhiteColor,
                                              fontSize: 10.0),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '@Walker_wlk',
                                          style: themeData.textTheme.bodyText2!
                                              .copyWith(
                                                  color: kWhiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Nom uttilisateur',
                                          style: themeData.textTheme.bodyText2!
                                              .copyWith(
                                                  color: kWhiteColor,
                                                  fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.qr_code)
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Notification',
                                          style: themeData.textTheme.bodyText2!
                                              .copyWith(
                                                  color: kWhiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Active',
                                          style: themeData.textTheme.bodyText2!
                                              .copyWith(
                                                  color: kWhiteColor,
                                                  fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.notifications)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
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
                color: Colors.white,
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
