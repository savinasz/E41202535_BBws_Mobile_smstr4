import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import 'package:minggu7/MovieDB_W10/MovieDB/model/popular_movies.dart';

class ApiProvider {
  String apiKey = '0fc5740199faa752da813c8c97f659e8';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    // String url = '$baseUrl/movie/popular?api_key=$apikey';
    //print(url);
    Response response =
    await client.get('$baseUrl/movie/populer?api_key=$apiKey');

    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}