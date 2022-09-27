import 'package:digital_14/models/search_model.dart';
import 'package:digital_14/services/event_service.dart';
import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  SearchModel? _searchModel;
  SearchModel? get searchModel => _searchModel;
  bool isLoading = false;

  TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  /**
   * Calls the Seat Geek API with search string as query param
   */
  fetchSearchEvents(String searchStr) async {
    isLoading = true;
    _searchModel = await getEvents(searchStr);
    isLoading = false;
    notifyListeners();
  }

  clearData() {
    _searchModel = null;
    _searchController.clear();
    notifyListeners();
  }
}