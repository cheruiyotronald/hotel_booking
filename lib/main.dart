// ignore_for_file: prefer_const_constructors
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/components/travelcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: TravelApp(),
    );
  }
}

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    'https://content.r9cdn.net/himg/e1/41/6a/expediav2-309442-2327571789-607168.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/06/80/2b/f6/lake-naivasha-country.jpg',
    'https://victormatara.com/wp-content/uploads/2021/02/List-of-Best-Hotels-To-Stay-In-Naivasha.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/0e/a7/a1/8c/fb-img-1482729179598.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/05/ff/0e/8b/naivasha-kongoni-lodge.jpg',
    'https://netstorage-tuko.akamaized.net/images/0fgjhs471n1ml08a.jpg',
    'https://expeditionsmaasaisafaris.com/images/enashipai-resort-spa-rates.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/1a/8c/8b/74/lake-naivasha-crescent.jpg',
    'https://images.trvl-media.com/hotels/5000000/4490000/4489200/4489107/e1298ec5_z.jpg',
    'https://enhols.com/wp-content/uploads/2015/12/phoca_thumb_l_room-interior-640x400.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Customer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Pick your Destination',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search for Hotel, Flight...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    TabBar(
                      indicatorColor: Colors.red,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.red,
                      // ignore: prefer_const_constructors
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        // ignore: prefer_const_constructors
                        Tab(
                          text: 'Trending',
                        ),
                        // ignore: prefer_const_constructors
                        Tab(
                          text: 'Promotions',
                        ),
                        Tab(
                          text: 'Favourite',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                urls[3],
                                'Luxury Hotel',
                                'Naivasha',
                                3,
                              ),
                              travelCard(
                                urls[5],
                                'Sun Africa Hotel',
                                'Nakuru',
                                4,
                              ),
                              travelCard(
                                urls[2],
                                'Konex Hotel',
                                'Naivasha',
                                2,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                urls[6],
                                'Sahara Hotel',
                                'Nakuru',
                                1,
                              ),
                              travelCard(
                                urls[8],
                                'Mtare Hotel',
                                'Naivasha',
                                2,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(
                                urls[7],
                                'Kinu Hotel',
                                'Kisumu',
                                4,
                              ),
                              travelCard(
                                urls[9],
                                'Hamo Hotel',
                                'Mombasa',
                                5,
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
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
