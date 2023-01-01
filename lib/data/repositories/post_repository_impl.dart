import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/data/data_sources/post_remote_data_source.dart';
import 'package:flutter_clean_arch/domain/repositories/post_repository.dart';

import '../../core/error/failure.dart';
import '../../domain/entities/post.dart';

class PostRepositoryImpl extends PostRepository {
  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Post>>> getUserPosts(int userId) async {
    try {
      final result = await remoteDataSource.getUserPosts(userId);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
