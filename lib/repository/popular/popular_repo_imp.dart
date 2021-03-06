import 'package:flutter/foundation.dart';
import 'package:test_drive/model/movie/movie.dart';
import 'package:test_drive/repository/popular/popular_repo.dart';
import 'package:test_drive/service/remote/api_end_points.dart';
import 'package:test_drive/service/remote/base_api_service.dart';
import 'package:test_drive/service/remote/network_api_service.dart';
import 'package:test_drive/utils/constanta.dart';

class PopularRepoImp implements PopularRepo{

  final BaseApiService _apiService = NetworkApiService();

  @override
  Future<Movie?> getPopular() async {
    try{
      dynamic response = await _apiService.getMethodWithQuery(ApiEndPoints().getPopularMovie, {
        "api_key": Constanta.apiKey,
        "language": Constanta.defaultLanguageReq,
        "page": "1",
        "region": Constanta.defaultRegion
      });
      if (kDebugMode) {
        print("Response Success Popular Repo Imp: $response");
      }
      final data = Movie.fromJson(response);
      return data;
    }catch(e){
      if (kDebugMode) {
        print("Response Err Popular Repo Imp: $e");
      }
      rethrow;
    }
  }



}