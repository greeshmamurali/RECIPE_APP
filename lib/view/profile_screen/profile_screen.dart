import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';
import 'package:sample_29/golbal_widgets/CustomVideoCard.dart';
import 'package:sample_29/golbal_widgets/customRecipeCard.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/view/recipe_details/recipe_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile',
        style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.more_horiz,color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sectionOne(),
        
            SizedBox(height: 20,),
        
            sectionTwo(),
        
            Divider(height: 1,color: ColorConstants.LIGHT_GREY_COLOR.withOpacity(.4),),
        
            DefaultTabController(
              length: 2,
               child: Column(
                 children: [
                   TabBar(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    labelColor: Colors.white,
                    unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                    dividerHeight: 0,
                    indicatorSize: TabBarIndicatorSize.tab,
                   
                    indicator: BoxDecoration(
                      color: ColorConstants.PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    tabs: [
                               Tab(
                    child: Text('Video'),
                               ),
                               Tab(
                    child: Text('Recipe'),
                               ),
                             ]),
               
                    SizedBox(
                      height: 250,
                      child: TabBarView(children: [
                         Expanded(
                                    child: SizedBox(
                                      height: double.infinity,
                                      
                                      width: double.infinity,
                                      child: ListView.separated(
                                        // shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        
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
                      

                        ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                    
                      itemBuilder:(context, index) {
                      return customRecipeCard(img: DummyDb.recent[index]['img'],
                      name: DummyDb.recipes[index]['name'],
                      rating: DummyDb.recipes[index]['rating'],
                      ingredient: DummyDb.recipes[index]['ingredients'],
                      time: DummyDb.recipes[index]['time'],);
                    }, separatorBuilder:(context, index) => SizedBox(height: 16,),
                     itemCount: DummyDb.recipes.length)
                        
                      ]),
                    ),


                  
                 ],
               ),
            
            )
          ],
        ),
      ),
    );
  }

  Padding sectionTwo() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Recipe',
                  style: TextStyle(
                    color: ColorConstants.LIGHT_GREY_COLOR,fontSize: 12
                  ),),
          
                  SizedBox(height: 2,),
          
                  Text('3',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 20
          
                  ),)
                ],
              ),
              Column(
                children: [
                  Text('Videos',
                  style: TextStyle(
                    color: ColorConstants.LIGHT_GREY_COLOR,fontSize: 12
                  ),),
          
                  SizedBox(height: 2,),
          
                  Text('13',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 20
          
                  ),)
                ],
              ),
              Column(
                children: [
                  Text('Followers',
                  style: TextStyle(
                    color: ColorConstants.LIGHT_GREY_COLOR,fontSize: 12
                  ),),
          
                  SizedBox(height: 2,),
          
                  Text('14K',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 20
          
                  ),)
                ],
              ),
              Column(
                children: [
                  Text('Following',
                  style: TextStyle(
                    color: ColorConstants.LIGHT_GREY_COLOR,fontSize: 12
                  ),),
          
                  SizedBox(height: 2,),
          
                  Text('120',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 20
          
                  ),)
                ],
              ),



            ],
          ),
        );
  }

  Container sectionOne() {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 50,
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600'),),

                  Spacer(),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.PRIMARY_COLOR,width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child:Text('Edit profile',
                    style: TextStyle(
                      color: ColorConstants.PRIMARY_COLOR,fontSize: 14,fontWeight: FontWeight.w600
                    ),) ,
                  )
                ],
              ),

              SizedBox(height: 16,),

              Text('Alexandra Blair',
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
              ),),

              SizedBox(height: 16,),

              Text("Hello world I’m Alessandra Blair, I’m\nfrom Italy 🇮🇹 I love cooking so much!",
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.LIGHT_GREY_COLOR
              ),)
            ],
          ),

        );
  }
}

