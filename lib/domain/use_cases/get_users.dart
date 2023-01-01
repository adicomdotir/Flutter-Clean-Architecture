import 'package:flutter_clean_arch/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/core/use_cases/use_case.dart';
import 'package:flutter_clean_arch/domain/repositories/user_repository.dart';

import '../../core/no_params.dart';
import '../entities/user.dart';

class GetUsers extends UseCase<List<User>, NoParams> {
  final UserRepository userRepository;

  GetUsers(this.userRepository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams param) {
    return userRepository.getUsers();
  }
}
