import 'dart:convert' as convert;
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class MovieProvider extends ChangeNotifier{

  final String _apiKey    = '4dd47d7a4b22255b0f24dc8dc2fcdf50';
  final String _baseUrl   = 'api.themoviedb.org';
  final String _language  = 'es-ES';


  MovieProvider(){
    print('MovieProvider inicializado');


    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);

    print(decodedData['dates']);

  }

}