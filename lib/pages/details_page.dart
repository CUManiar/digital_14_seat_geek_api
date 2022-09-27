import 'package:digital_14/constants/constants.dart';
import 'package:digital_14/providers/like_provider.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    this.title,
    this.location,
    this.image,
    this.date,
    this.eventId
  }) : super(key: key);

  final String? title;
  final String? location;
  final String? image;
  final String? date;
  final String? eventId;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      minimum: EdgeInsets.only(top: 10.0),
      child: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Platform.isIOS ?
                    IconButton(onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blue,))
                    :
                    IconButton(onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back)),
                Expanded(
                  child: Text(
                      title!,
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    ),
                  )),
                Consumer<LikeProvider>(
                    builder: (context, likeInfo, child) {
                      return IconButton(
                          onPressed: () async {
                            var likedEvents = await Hive.openBox('likedEvents');

                            if (!likeInfo.isLiked!.contains(eventId!)) {
                              likedEvents.put('$eventId', eventId);
                            } else {
                              likedEvents.delete(eventId);
                            }

                            likeInfo.getLikedItems();
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: likeInfo.isLiked!.contains(eventId!) ?
                              likedIconColor : greyColor,
                          )
                      );
                    })
              ],
            ),

            const Divider(),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child:
                Platform.isMacOS ?
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.5,
                      child: Image.network(image!, fit: BoxFit.fill,),
                    ) :
                    SizedBox(
                      width: size.width,
                      child: Image.network(image!, fit: BoxFit.fill),
                    ),
            ),
            const SizedBox(height: 20.0,),
            Text(
              "$location",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "$date",
              style: const TextStyle(
                color: greyColor,
                fontSize: 16.0
              )
            )
          ],
        ),
      ),
    );
  }
}
