import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';
import 'package:sample_29/golbal_widgets/CustomVideoCard.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/view/recipe_details/recipe_details.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Recipes',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),),
        
      ),
    
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
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
                      'Video',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Recipes',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  
                ])),
                SizedBox(height: 12,),



          Expanded(
            child: SizedBox(
              height: double.infinity,
              
              width: double.infinity,
              child: ListView.separated(
                
                padding: EdgeInsets.symmetric(horizontal: 20),
                
                  itemBuilder: (context, index) =>CustomVideoCard(
                    onCardTap: (){
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
                          width: double.infinity,
                  ),
                  separatorBuilder:(context, index) => SizedBox(height: 16,),
                  itemCount: DummyDb.details.length),
            ),
          ),
        ],
      ),
    );
  }
}
