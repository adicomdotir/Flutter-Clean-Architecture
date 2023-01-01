import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_clean_arch/core/network/network_info.dart';
import 'package:flutter_clean_arch/data/data_sources/post_remote_data_source.dart';
import 'package:flutter_clean_arch/data/data_sources/user_local_data_source.dart';
import 'package:flutter_clean_arch/data/data_sources/user_remote_data_source.dart';
import 'package:flutter_clean_arch/domain/repositories/post_repository.dart';
import 'package:flutter_clean_arch/domain/repositories/user_repository.dart';
import 'package:flutter_clean_arch/domain/use_cases/get_user_posts.dart';
import 'package:flutter_clean_arch/domain/use_cases/get_users.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks(
  [
    Connectivity,
    HttpClientAdapter,
    SharedPreferences,
    NetworkInfo,
    UserRemoteDataSource,
    PostRemoteDataSource,
    UserLocalDataSource,
    UserRepository,
    PostRepository,
    GetUsers,
    GetUserPosts,
  ],
)
void generateMocks() {}
