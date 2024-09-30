import 'package:flutter/material.dart';
import 'package:sample_29/utils/constants/color_constants.dart';

class customButton extends StatelessWidget {
  void Function()? onCardTap;
   String data;
  customButton({super.key, this.onCardTap, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 38,
      decoration: BoxDecoration(
          color: ColorConstants.PRIMARY_COLOR,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
        child: InkWell(
          onTap: onCardTap,
          child: Center(
            child: Text(
              '${data}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
