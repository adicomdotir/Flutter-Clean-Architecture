import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/core/error/failure.dart';
import 'package:flutter_clean_arch/core/use_cases/use_case.dart';
import 'package:flutter_clean_arch/domain/entities/post.dart';
import 'package:flutter_clean_arch/domain/repositories/post_repository.dart';

class GetUserPosts extends UseCase<List<Post>, int> {
  final PostRepository postRepository;

  GetUserPosts(this.postRepository);

  @override
  Future<Either<Failure, List<Post>>> call(int param) {
    return postRepository.getUserPosts(param);
  }
}
