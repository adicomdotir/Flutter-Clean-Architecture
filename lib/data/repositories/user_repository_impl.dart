import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/core/error/failure.dart';
import 'package:flutter_clean_arch/core/network/network_info.dart';
import 'package:flutter_clean_arch/data/data_sources/user_local_data_source.dart';
import 'package:flutter_clean_arch/data/data_sources/user_remote_data_source.dart';
import 'package:flutter_clean_arch/domain/repositories/user_repository.dart';

import '../../domain/entities/user.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getUsers();
        localDataSource.cacheUsers(result);
        return Right(result);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localDataSource.getLastUsers();
        return Right(result);
      } catch (e) {
        return Left(CacheFailure());
      }
    }
  }
}
