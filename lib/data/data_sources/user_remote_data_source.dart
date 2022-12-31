import 'package:flutter_clean_arch/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_remote_data_source.g.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

@RestApi(baseUrl: 'https://jsonplaceholder.typecode.com/')
abstract class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  factory UserRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _UserRemoteDataSourceImpl;

  @GET('/users')
  @override
  Future<List<UserModel>> getUsers();
}
