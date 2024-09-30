import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sample_29/golbal_widgets/customButton.dart';
import 'package:sample_29/golbal_widgets/customIngredientCard.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/utils/constants/image_constants.dart';
import 'package:sample_29/view/create_recipe_screen/widgets/customIngredientCard.dart';

class CreateRecipeScreen extends StatefulWidget {
  const CreateRecipeScreen({super.key});

  @override
  State<CreateRecipeScreen> createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.more_horiz,color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create recipe',
              style: TextStyle(color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600),),
        
              SizedBox(height: 12,),
        
              Container(
                padding: EdgeInsets.only(top: 12,bottom: 20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/628776/pexels-photo-628776.jpeg?auto=compress&cs=tinysrgb&w=600'),fit: BoxFit.cover,)
        
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16,
                            child: Icon(Icons.edit,color: ColorConstants.PRIMARY_COLOR,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36,),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                          backgroundColor:
                              ColorConstants.LIGHT_GREY_COLOR.withOpacity(.3),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                                            ),
                        ],
                      ),
                  ],
                ),
        
              ),
        
              SizedBox(height: 20,),
        
              TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.PRIMARY_COLOR)),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(5),)
                ),
                
              ),
        
              SizedBox(height: 16,),
        
              customIngridientCard(img: ImageConstants.Milk, name: 'Serves', quantity: '01',arrowValue: true,),
        
              SizedBox(height: 16,),
        
              customIngridientCard(img: ImageConstants.cooktime, name: 'Cook time', quantity: '45 min',arrowValue: true,),
        
              SizedBox(height: 12,),
        
             
              Text('Ingredients',
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600),),
        
              SizedBox(height: 16,),
        
              customIngredientTextCard(),
              SizedBox(height: 16,),

              customIngredientTextCard(),
              SizedBox(height: 16,),

              customIngredientTextCard(),
              SizedBox(height: 16,),

              Text('+ Add new Ingredient',
              style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17
              ),),

              SizedBox(height: 20,),

              Container(
                height: 50,
                width: double.infinity,
                
                color: Colors.white,
                child: Expanded(child: customButton(data: 'Save my recipes')))
            ],
          ),
        ),
      ),
    );
  }
}

