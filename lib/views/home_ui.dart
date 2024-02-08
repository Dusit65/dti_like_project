import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin { 
  late TabController _tabController;
  int _currentTabIndex =  0;

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "DTI Cake Shop",
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[100],
            indicatorColor: Colors.yellow,
            indicatorWeight: 5.0,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่1',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่2',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่3',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่4',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่5',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่6',
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: 'ร้านที่7',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "SAU Cake Shop",
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  "แอปสำหรับคนชอบเค้ก",
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bg_welcome.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1454525086/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%99%E0%B8%A7%E0%B8%84%E0%B8%B4%E0%B8%94%E0%B9%81%E0%B8%9C%E0%B8%99%E0%B8%A0%E0%B8%B9%E0%B8%A1%E0%B8%B4%E0%B8%A7%E0%B8%87%E0%B8%81%E0%B8%A5%E0%B8%A1%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%84%E0%B8%99%E0%B9%81%E0%B8%9A%E0%B9%88%E0%B8%87%E0%B8%9B%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%84%E0%B9%89%E0%B8%81%E0%B8%8A%E0%B9%87%E0%B8%AD%E0%B8%84%E0%B9%82%E0%B8%81%E0%B9%81%E0%B8%A5%E0%B8%95%E0%B8%A1%E0%B8%B8%E0%B8%A1%E0%B8%A1%E0%B8%AD%E0%B8%87%E0%B8%94%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7.jpg?s=612x612&w=0&k=20&c=phVHnCHgCCuG12BbUZl7DSxikBL1UGB6or5KW3KMQ6s='),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/1454525086/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%99%E0%B8%A7%E0%B8%84%E0%B8%B4%E0%B8%94%E0%B9%81%E0%B8%9C%E0%B8%99%E0%B8%A0%E0%B8%B9%E0%B8%A1%E0%B8%B4%E0%B8%A7%E0%B8%87%E0%B8%81%E0%B8%A5%E0%B8%A1%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%84%E0%B8%99%E0%B9%81%E0%B8%9A%E0%B9%88%E0%B8%87%E0%B8%9B%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%84%E0%B9%89%E0%B8%81%E0%B8%8A%E0%B9%87%E0%B8%AD%E0%B8%84%E0%B9%82%E0%B8%81%E0%B9%81%E0%B8%A5%E0%B8%95%E0%B8%A1%E0%B8%B8%E0%B8%A1%E0%B8%A1%E0%B8%AD%E0%B8%87%E0%B8%94%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7.jpg?s=612x612&w=0&k=20&c=phVHnCHgCCuG12BbUZl7DSxikBL1UGB6or5KW3KMQ6s="),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/1454525086/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%99%E0%B8%A7%E0%B8%84%E0%B8%B4%E0%B8%94%E0%B9%81%E0%B8%9C%E0%B8%99%E0%B8%A0%E0%B8%B9%E0%B8%A1%E0%B8%B4%E0%B8%A7%E0%B8%87%E0%B8%81%E0%B8%A5%E0%B8%A1%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%84%E0%B8%99%E0%B9%81%E0%B8%9A%E0%B9%88%E0%B8%87%E0%B8%9B%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%84%E0%B9%89%E0%B8%81%E0%B8%8A%E0%B9%87%E0%B8%AD%E0%B8%84%E0%B9%82%E0%B8%81%E0%B9%81%E0%B8%A5%E0%B8%95%E0%B8%A1%E0%B8%B8%E0%B8%A1%E0%B8%A1%E0%B8%AD%E0%B8%87%E0%B8%94%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7.jpg?s=612x612&w=0&k=20&c=phVHnCHgCCuG12BbUZl7DSxikBL1UGB6or5KW3KMQ6s="),
                  ),
                ],
              ),
              //shop1
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'เค้กบ้านสวน',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //shop2
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck02.png',
                  ),
                ),
                title: Text(
                  'Smile Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 31, 199, 233),
                ),
              ),
              Divider(),
              //shop3
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck03.png',
                  ),
                ),
                title: Text(
                  'Like Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 76, 0, 255),
                ),
              ),
              Divider(),
              //shop4
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'Sad Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 2, 248, 39),
                ),
              ),
              Divider(),
              //shop5
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck05.png',
                  ),
                ),
                title: Text(
                  'Happy Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 242, 255, 0),
                ),
              ),
              Divider(),
              //shop6
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck06.png',
                  ),
                ),
                title: Text(
                  'Argry Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 255, 132, 0),
                ),
              ),
              Divider(),
              //shop7
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6 ;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck07.png',
                  ),
                ),
                title: Text(
                  'WoW Bakery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text('ออกจากแอป'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            //shop1
            showShopWidget(
              'เค้กบ้านสวน','assets/images/ck01.png','028881111','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop2
            showShopWidget(
              'Smile Bakery','assets/images/ck02.png','028882222','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop3
            showShopWidget(
              'Like Bakery','assets/images/ck03.png','028883333','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop4
            showShopWidget(
              'Sad Bakery','assets/images/ck04.png','028884444','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop5
            showShopWidget(
              'Happy Bakery','assets/images/ck05.png','028885555','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop6
            showShopWidget(
              'Argry Bakery','assets/images/ck06.png','028886666','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            ),
            //shop7
            showShopWidget(
              'WoW BAkery','assets/images/ck07.png','028887777','https://www.snp1344.com/th',
              '13.35345,100.6834513414'
            )
          ],
        ),
      ),
    );
  }

  Widget showShopWidget(String shopName, String shopImg, String shopPhone, String shopWeb, String shopGPS){
    return Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    shopName,
                    style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Image.asset(
                    shopImg,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      
                      onTap: () {
                        _makePhoneCall(shopPhone);
                      },
                      tileColor: Colors.pink,
                      leading: Icon(Icons.phone),
                      title: Text(shopPhone),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse(shopWeb)
                        );
                      },
                      tileColor: Colors.pink,
                      leading: Icon(
                        Icons.web,
                      ),
                      title: Text(shopWeb),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse('https://www.google.com/maps/@${shopGPS},17z'),
                        );
                      },
                      tileColor: Colors.pink,
                      leading: Icon(
                        FontAwesomeIcons.mapLocation,
                      ),
                      title: Text('นำทางไปร้าน'),
                    ),
                  ),
                ],
              ),
            );
  }
}
