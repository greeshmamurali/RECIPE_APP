import 'package:flutter/material.dart';
import 'package:sample_29/dummy_db.dart';

import '../utils/constants/color_constants.dart';

class customIngridientCard extends StatelessWidget {
  String img;
  String name;
  String quantity;
  bool arrowValue;
  customIngridientCard({
    required this.img,
    required this.name,
    required this.quantity,
    this.arrowValue=false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstants.LIGHT_GREY_COLOR.withOpacity(.2),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: 16,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              quantity,
              style: TextStyle(
                  fontSize: 14, color: ColorConstants.LIGHT_GREY_COLOR),
            ),
            arrowValue?Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.arrow_forward_outlined,color: Colors.black,),
            ):SizedBox()
          ],
        ),
      ),
    );
  }
}
