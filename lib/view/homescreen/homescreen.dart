import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';
import 'package:sample_29/golbal_widgets/CustomVideoCard.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/view/recipe_details/recipe_details.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                titleSection(), //section-1 Title
                //section-2 Trending now
                trendingNow(),

                //section-3 Popular
                PopularSection(),

                SizedBox(
                  height: 12,
                ),

                //Section 4

                recentRecipe(),

                SizedBox(
                  height: 12,
                ),

                //Section 5

                popularCreators()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column popularCreators() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular Creators',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'See all ->',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage:
                          NetworkImage(DummyDb.creators[index]['img']),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        DummyDb.creators[index]['name'],
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
              itemCount: DummyDb.creators.length),
        )
      ],
    );
  }

  Column recentRecipe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recent recipe',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'See all ->',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 200,
          //width: 150,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 124,
                      width: 124,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(DummyDb.recent[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      DummyDb.recent[index]['name'],
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      DummyDb.recent[index]['by'],
                      style: TextStyle(
                          color: ColorConstants.LIGHT_GREY_COLOR, fontSize: 12),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: DummyDb.recent.length),
        )
      ],
    );
  }

  Column PopularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Popular category',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        DefaultTabController(
            length: 5,
            child: TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                labelColor: Colors.white,
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstants.PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(10)),
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      'Salad',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Breakfast',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Appetizers',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Noodles',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Lunch',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ])),
        SizedBox(
          height: 231,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  SizedBox(
                    height: 231,
                    width: 150,
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 150,
                        height: 176,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 66,
                            ),
                            Center(
                              child: Text(
                                DummyDb.food[index]['title'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            // SizedBox(
                            //   height: 14,
                            // ),
                            Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(
                                            color: ColorConstants.GREY_COLOR,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        DummyDb.food[index]['time'],
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.bookmark_outline,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstants.POPULAR_GREY_COLOR,
                        ),
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            NetworkImage(DummyDb.food[index]['img']),
                      )),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 16,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.food.length,
          ),
        ),
      ],
    );
  }

  Column trendingNow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, right: 20, left: 20),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trending Now 🔥',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR, fontSize: 14),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.PRIMARY_COLOR,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 260,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomVideoCard(
                    onCardTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(
                             img1: DummyDb.details[index]['img1'],
                             title: DummyDb.details[index]['title'],
                             rating: DummyDb.details[index]['rating'],
                             img2: DummyDb.details[index]['img2'],
                             name: DummyDb.details[index]['name'],
                              
                            
                            ),
                          ));
                    },
                    rating: DummyDb.details[index]['rating'],
                    duration: DummyDb.details[index]['duration'],
                    img1: DummyDb.details[index]['img1'],
                    title: DummyDb.details[index]['title'],
                    img2: DummyDb.details[index]['img2'],
                    name: DummyDb.details[index]['name'],
                    width: 280,
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.details.length),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Column titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            'Find best recipes\nfor cooking',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search recipes',
                hintStyle: TextStyle(color: ColorConstants.GREY_COLOR),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.GREY_COLOR),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.GREY_COLOR,
                )),
          ),
        )
      ],
    );
  }
}
