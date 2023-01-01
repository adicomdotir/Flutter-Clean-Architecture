import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/core/states/data_state.dart';
import 'package:flutter_clean_arch/domain/entities/post.dart';
import 'package:flutter_clean_arch/domain/use_cases/get_user_posts.dart';

class UserPostsCubit extends Cubit<DataState<List<Post>>> {
  final GetUserPosts getUserPosts;

  UserPostsCubit(this.getUserPosts) : super(DataState.initial());

  fetchUserPosts(int userId) async {
    emit(DataState.inProgress());
    final result = await getUserPosts(userId);
    result.fold(
      (failure) => emit(DataState.failure()),
      (posts) {
        if (posts.isEmpty) {
          emit(DataState.empty());
        } else {
          emit(DataState.success(posts));
        }
      },
    );
  }
}
