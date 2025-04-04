import 'package:flutter/material.dart';
import 'package:rickandmorty/app/locator.dart';
import 'package:rickandmorty/models/characters_model.dart';
import 'package:rickandmorty/services/api_services.dart';
import 'package:rickandmorty/services/preferences_service.dart';

class FavouritesViewmodel extends ChangeNotifier {
  final _preferencesService = locator<PreferencesService>();
  final _apiService = locator<ApiService>();

  List<int> _favourites = [];
  List<CharacterModel> _charactersModel = [];
  List<CharacterModel> get characters => _charactersModel;
 
  void getFavourites() {
    _favourites = _preferencesService.getSavedCharacters();
    _getCharacters();
  }

  void _getCharacters() async {
    _charactersModel = await _apiService.getMultipleCharacters(_favourites);
    notifyListeners();
  }
}