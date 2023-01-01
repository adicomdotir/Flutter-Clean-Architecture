import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/core/no_params.dart';
import 'package:flutter_clean_arch/core/states/data_state.dart';
import 'package:flutter_clean_arch/domain/entities/user.dart';
import 'package:flutter_clean_arch/domain/use_cases/get_users.dart';

class UsersCubit extends Cubit<DataState<List<User>>> {
  final GetUsers getUsers;

  UsersCubit(this.getUsers) : super(DataState.initial());

  fetchUsers() async {
    emit(DataState.inProgress());
    final result = await getUsers(NoParams());
    result.fold(
      (failure) => emit(DataState.failure()),
      (success) {
        if (success.isEmpty) {
          emit(DataState.empty());
        } else {
          emit(DataState.success(success));
        }
      },
    );
  }
}
