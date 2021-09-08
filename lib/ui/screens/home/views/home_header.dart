import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sub_category_demo/models/home/home_entity.dart';

class HomeHeader extends StatelessWidget {
  final HomeTopEntity data = HomeTopEntity(
    id: 'abc127',
    title: 'Toan hinh hoc khong gian',
    groupTitle: 'Mathematics',
    imageUrl:
        'https://thumbs.dreamstime.com/b/mathematics-mathematics-maths-doodles-lettering-black-background-education-vector-banner-134412805.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
        color: Color(0xFF262832),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            iconSize: 16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
            child: Image.network(
              data.imageUrl,
              width: 48.0,
              height: 48.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.groupTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Multiple choice',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
