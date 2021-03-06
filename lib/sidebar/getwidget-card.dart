import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class GetCard extends StatefulWidget {
  const GetCard({Key? key}) : super(key: key);

  @override
  _GetCardState createState() => _GetCardState();
}

class _GetCardState extends State<GetCard>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  bool fav = false;
  bool fav1 = false;
  bool fav2 = false;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.DARK,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.back,
            color: GFColors.SUCCESS,
          ),
        ),
        title: const Text(
          'Cards',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 40,
            margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: GFSegmentTabs(
              tabController: tabController,
              width: 280,
              length: 3,
              tabs: const <Widget>[
                Text('Basic'),
                Tab(
                  child: Text('Avatars'),
                ),
                Tab(
                  child: Text('Full Image'),
                ),
              ],
              tabBarColor: GFColors.LIGHT,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: GFColors.WHITE,
              unselectedLabelColor: GFColors.DARK,
              indicator: const BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: GFColors.SUCCESS,
                    width: 3,
                  ),
                ),
              ),
              //indicatorPadding: const EdgeInsets.all(8),
              // indicatorWeight: 2,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 140,
            child: GFTabBarView(
              controller: tabController,
              height: 400,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    GFCard(
                      boxFit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/card.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                      ),
                      titlePosition: GFPosition.end,
                      title: GFListTile(
                        titleText: 'Card Title 1',
                        icon: GFIconButton(
                          onPressed: null,
                          icon: GestureDetector(
                            onTap: () {
                              setState(() {
                                fav = !fav;
                              });
                              },
                            child: fav
                                ? const Icon(
                              Icons.favorite,
                              color: GFColors.DANGER,
                            )
                                : const Icon(Icons.favorite_border),
                          ),
                          type: GFButtonType.transparent,
                        ),
                      ),
                      content: const Text(
                        'Some quick example text to build on the card',
                        style: TextStyle(color: Colors.grey),
                      ),
                      buttonBar: GFButtonBar(
                        padding: const EdgeInsets.only(bottom: 10),
                        children: <Widget>[
                          GFButton(
                            onPressed: () {},
                            text: 'Read More',
                          ),
                          GFButton(
                            onPressed: () {},
                            text: 'Send',
                          )
                        ],
                      ),
                    ),
                    GFCard(
                                boxFit: BoxFit.contain,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.67), BlendMode.darken),
                                image: Image.asset(
                                  'assets/images/card1.png',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                titlePosition: GFPosition.end,
                                title: GFListTile(
                                  titleText: 'Card Title',
                                  icon: GFIconButton(
                                    onPressed: null,
                                    icon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fav1 = !fav1;
                                        });
                                      },
                                      child: fav1
                                          ? const Icon(
                                        Icons.favorite,
                                        color: GFColors.DANGER,
                                      )
                                          : const Icon(Icons.favorite_border),
                                    ),
                                    type: GFButtonType.transparent,
                                  ),
                                ),
                                content: const Text(
                                  'Some quick example text to build on the card',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: const GFButtonBar(
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: null,
                                      child: Text('Read More'),
                                      icon: Icon(Icons.keyboard_arrow_right),
                                      type: GFButtonType.transparent,
                                      position: GFPosition.end,
                                    ),
                                  ],
                                ),
                              ),
                              GFCard(
                                boxFit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.67), BlendMode.darken),
                                image: Image.asset(
                                  'assets/images/card2.png',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                titlePosition: GFPosition.end,
                                title: const GFListTile(
                                  titleText: 'Card Title',
                                ),
                                content: const Text(
                                  'Some quick example text to build on the card',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: GFButtonBar(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      text: 'Share',
                                    )
                                  ],
                                ),
                              ),
                              GFCard(
                                boxFit: BoxFit.fitWidth,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.67), BlendMode.darken),
                                image: Image.asset(
                                  'assets/images/card3.png',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                titlePosition: GFPosition.end,
                                title: const GFListTile(
                                  titleText: 'Card Title',
                                ),
                                content: const Text(
                                  'Some quick example text to build on the card',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: GFButtonBar(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      text: 'View More',
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      text: 'Share',
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ListView(
                            children: <Widget>[
                              GFCard(
                                boxFit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.67), BlendMode.darken),
                                image: Image.asset(
                                  'assets/images/image1.png',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                titlePosition: GFPosition.end,
                                title: GFListTile(
                                  avatar: const GFAvatar(
                                    backgroundImage:
                                    AssetImage('assets/images/avatar8.png'),
                                  ),
                                  titleText: 'Card Title',
                                  subTitleText: 'Sub Title',
                                  icon: GFIconButton(
                                    onPressed: null,
                                    icon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fav2 = !fav2;
                                        });
                                      },
                                      child: fav2
                                          ? const Icon(
                                        Icons.favorite,
                                        color: GFColors.DANGER,
                                      )
                                          : const Icon(Icons.favorite_border),
                                    ),
                                    type: GFButtonType.transparent,
                                  ),
                                ),
                                content: const Text(
                                  'GetWidget is an open source library that comes with pre-build 1000+ UI components',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              GFCard(
                                boxFit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.67), BlendMode.darken),
                                image: Image.asset(
                                  'assets/images/image2.png',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                titlePosition: GFPosition.end,
                                title: const GFListTile(
                                  avatar: GFAvatar(
                                    backgroundImage:
                                    AssetImage('assets/images/avatar9.png'),
                                  ),
                                  titleText: 'Card Title',
                                  subTitleText: 'Sub Title',
                                ),
                                content: const Text(
                                  'Some quick example text to build on the card',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: GFButtonBar(
                                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                                  children: <Widget>[
                                    GFIconButton(
                                        color: const Color(0xFF3B5998),
                                        shape: GFIconButtonShape.circle,
                                        icon: const Icon(
                                          IconData(0xe908,
                                              fontFamily: 'GFSocialFonts'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {}),
                                    GFIconButton(
                                        color: const Color(0xFF00ACEE),
                                        shape: GFIconButtonShape.circle,
                                        icon: const Icon(
                                          IconData(0xe907,
                                              fontFamily: 'GFSocialFonts'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {}),
                                    GFIconButton(
                                        color: const Color(0xFF25D366),
                                        shape: GFIconButtonShape.circle,
                                        icon: const Icon(
                                          IconData(0xe906,
                                              fontFamily: 'GFSocialFonts'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {}),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ListView(
                            children: <Widget>[
                              GFCard(
                                boxFit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.60), BlendMode.darken),
                                imageOverlay:
                                const AssetImage('assets/images/image.png'),
                                title: const GFListTile(
                                  avatar: GFAvatar(
                                    backgroundImage:
                                    AssetImage('assets/images/avatar10.png'),
                                  ),
                                  title: Text(
                                    'Card Title',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subTitle: Text(
                                    'subtitle',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                content: const Text(
                                  'GetWidget is an open source library that comes with pre-build 1000+ UI components',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: GFButtonBar(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  children: <Widget>[
                                    GFButton(
                                      onPressed: () {},
                                      text: 'Send',
                                    ),
                                    GFButton(
                                      onPressed: () {},
                                      text: 'View',
                                    )
                                  ],
                                ),
                              ),
                              GFCard(
                                boxFit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.40), BlendMode.darken),
                                imageOverlay: const AssetImage('assets/images/image1.png'),
                                title: const GFListTile(
                                  title: Text(
                                    'Card Title with Image 1',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subTitle: Text(
                                    'subtitle',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                content: const Text(
                                  'GetWidget is an open source library that comes with pre-build 1000+ UI components',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                buttonBar: GFButtonBar(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  children: <Widget>[
                                    GFIconButton(
                                        color: const Color(0xFF3B5998),
                                        shape: GFIconButtonShape.circle,
                                        icon: const Icon(
                                          IconData(0xe908,
                                              fontFamily: 'MaterialIcons'),
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {}),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
    );
  }

