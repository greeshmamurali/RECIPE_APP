import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';

import '../utils/constants/color_constants.dart';

class customRecipeCard extends StatelessWidget {
  String img;
  String name;
  String rating;
  String ingredient;
  String time;
   customRecipeCard({
    required this.img,
    required this.name,
    required this.rating,
    required this.ingredient,
    required this.time,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
               
                decoration: BoxDecoration(
                    color: ColorConstants.LIGHT_GREY_COLOR.withOpacity(.3),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      rating,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16,
                child: Icon(
                  Icons.more_horiz,
                  color: ColorConstants.PRIMARY_COLOR,
                ),
              )
            ],
          ),
          SizedBox(
            height: 78,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 157.0),
            child: Text(
              name,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
             padding: const EdgeInsets.only(left: 8),
            child: Text(
              '${ingredient} Ingredeints | ${time}',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
