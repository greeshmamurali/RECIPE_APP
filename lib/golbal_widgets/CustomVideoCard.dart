import 'package:flutter/material.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/utils/constants/image_constants.dart';

class CustomVideoCard extends StatelessWidget {
  String? rating;
  String? img1;
  String? title;
  String? img2;
  String? name;
  String? duration;
  double? width;
  void Function()? onCardTap;

  CustomVideoCard(
      {this.rating,
      this.img1,
      this.title,
      this.img2,
      this.name,
      this.duration,
      this.width,
      this.onCardTap
      // super.key,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              height: 180,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                        img1.toString(),
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:
                                ColorConstants.LIGHT_GREY_COLOR.withOpacity(.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 6, bottom: 8),
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 4, top: 4, bottom: 4),
                              child: Text(
                                rating.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.bookmark_outline,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor:
                        ColorConstants.LIGHT_GREY_COLOR.withOpacity(.3),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color:
                                ColorConstants.LIGHT_GREY_COLOR.withOpacity(.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 4, top: 4, bottom: 4),
                              child: Text(
                                duration.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  title.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  //backgroundImage: AssetImage(ImageConstants.SAM_BG),
                  backgroundImage: NetworkImage(img2.toString()),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'By ${name.toString()}',
                  style: TextStyle(
                      fontSize: 12, color: ColorConstants.TEXT_GREY_COLOR),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
