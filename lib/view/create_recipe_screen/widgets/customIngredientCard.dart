import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sample_29/utils/constants/color_constants.dart';

class customIngredientTextCard extends StatelessWidget {
  const customIngredientTextCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: ColorConstants.LIGHT_GREY_COLOR.withOpacity(.2))),
              hintText: 'Item name',
              hintStyle: TextStyle(
                color: ColorConstants.LIGHT_GREY_COLOR
              )
            ),
          ),
        ),
    
        SizedBox(width: 12,),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: ColorConstants.LIGHT_GREY_COLOR.withOpacity(.2))),
              hintText: 'Quantity',
              hintStyle: TextStyle(
                color: ColorConstants.LIGHT_GREY_COLOR
              )
            ),
          ),
        ),
    
        SizedBox(width: 12,),
    
        Icon(HugeIcons.strokeRoundedRemoveSquare,color: Colors.black,size: 24,)
      ],
    );
  }
}