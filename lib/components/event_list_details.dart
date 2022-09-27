import 'package:digital_14/constants/constants.dart';
import 'package:digital_14/providers/like_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventListDetails extends StatelessWidget {
  const EventListDetails(
      {
        Key? key,
        this.title,
        this.image,
        this.location,
        this.date,
        this.eventId,
      }) : super(key: key);
  
  final String? title;
  final String? image;
  final String? location;
  final String? date;
  final String? eventId;

  //Widget used to get white border around favourite Icon
  Widget _buildLikeIcon(double size, Color color) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Icon(
        Icons.favorite,
        color: color,
        size: size,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    var likedItems = context.read<LikeProvider>();
    likedItems.getLikedItems();
    
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: image != null ? Image.network("$image", fit: BoxFit.fill) :
                    Icon(Icons.face),
                ),
              ),
            ),
            
            // Show Liked event icon
            likedItems.isLiked!.contains(eventId!) ?
                Positioned(
                  top: 0,
                  left: 0,
                  child: Stack(
                    children: [
                      _buildLikeIcon(25, whiteColor),
                      _buildLikeIcon(20, likedIconColor)
                    ],
                  ),
                ) : Container()
          ],
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  overflow: TextOverflow.ellipsis
                ),
              ),
              Text(
                "$location",
                style: const TextStyle(
                  color: greyColor
                )
              ),
              Text(
                "$date",
                style: const TextStyle(
                  color: greyColor
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
