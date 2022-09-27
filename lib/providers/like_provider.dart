import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LikeProvider extends ChangeNotifier {
  Iterable<dynamic>? _isLiked;
  Iterable<dynamic>? get isLiked => _isLiked;

  getLikedItems() async {
    var likedEvents = await Hive.openBox('likedEvents');
    _isLiked = likedEvents.values;
    notifyListeners();
  }
}