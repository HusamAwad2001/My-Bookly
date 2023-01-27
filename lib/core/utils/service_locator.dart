import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly/core/utils/api_service.dart';
import 'package:my_bookly/features/home/data/repos/home_repo_implement.dart';

final getIt = GetIt.instance;

void setupGetIt(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(
    getIt.get<ApiService>(),
  ));
}