import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';
import 'package:sample_29/golbal_widgets/customButton.dart';
import 'package:sample_29/golbal_widgets/customIngredientCard.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/utils/constants/image_constants.dart';

class RecipeDetails extends StatelessWidget {
  String? rating;
  String? img1;
  String? title;
  String? img2;
  String? name;
  String? duration;
  RecipeDetails(
      {super.key, this.img1, this.title, this.rating, this.img2, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                title.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),

              
              SizedBox(
                height: 12,
              ),


              videoDetail(),

              SizedBox(
                height: 14,
              ),


              ingredientSection()
            ],
          ),
        ),
      ),
    );
  }

  Container ingredientSection() {
    return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Ingredients',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          '5 items',
                          style: TextStyle(
                              color: ColorConstants.LIGHT_GREY_COLOR,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return customIngridientCard(
                          img: DummyDb.Ingredients[index]['img'],
                          name: DummyDb.Ingredients[index]['name'],
                          quantity: DummyDb.Ingredients[index]['quantity'],
                          //arrowValue: true,
                        );
                      },
                      separatorBuilder:(context, index) => SizedBox(height: 12,),
                      itemCount: DummyDb.Ingredients.length)
                ],
              ),
            );
  }

  Container videoDetail() {
    return Container(
      height: 320,
      width: double.infinity,
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                img1.toString(),
                height: 200,
                fit: BoxFit.cover,
                width: double.infinity,
              )),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                rating.toString(),
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                '(300 reciews)',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                //backgroundImage: AssetImage(ImageConstants.SAM_BG),
                backgroundImage: NetworkImage(img2.toString()),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: ColorConstants.PRIMARY_COLOR,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Bali,Indonesia',
                        style:
                            TextStyle(color: ColorConstants.LIGHT_GREY_COLOR),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              customButton(data: 'Follow',)
            ],
          )
        ],
      ),
    );
  }
}



