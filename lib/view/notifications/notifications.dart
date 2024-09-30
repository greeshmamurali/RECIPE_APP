import 'package:flutter/material.dart';
import 'package:sample_29/utils/constants/color_constants.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',
        style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.tune,color: Colors.black,),
          )
        ],
      ),
      body: DefaultTabController(length: 3, child: Column(
        children: [
          TabBar(
            dividerHeight: 0,
           
           indicatorPadding: EdgeInsets.all(10),
            labelColor: Colors.white,
            unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: ColorConstants.PRIMARY_COLOR,
              borderRadius: BorderRadius.circular(10)
            ),
            tabs: [
            Tab(text: 'All',),
            Tab(text: 'Unread',),
            Tab(text: "Read",)
          ]),

          Expanded(
            child: TabBarView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Today',
                    style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                    decoration: BoxDecoration(
                      color: ColorConstants.POPULAR_GREY_COLOR,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ColorConstants.TEXT_GREY_COLOR,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Icon(Icons.description,color: Colors.greenAccent),
                            ),
                          ),
                          SizedBox(width: 12,),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New Recipe!',
                                style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                                ),),
                            
                               
                            
                                Text('Far far away, behind the word mountains, far from the countries.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: ColorConstants.TEXT_GREY_COLOR,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          )
                      ],
                    ),
                  )
            
            
            
                 
                ],
              ),
            
               Container(),
            
            
                  Container()
            ]),
          )
        ],
      )),
    );
  }
}