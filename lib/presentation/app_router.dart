import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class Routes {
  static const userPosts = '/userPosts';
}

abstract class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.userPosts:
      //   assert(arguments != null);
      //   assert(arguments is int);
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       return BlocProvider<UserPostCubit>(
      //         create: (context) =>
      //             getIt<UserPostsCubit>()..fetchUserPosts(arguments! as int),
      //         child: UserPostsPage(),
      //       );
      //     },
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('${settings.name} page is not found!'),
            ),
          ),
        );
    }
  }
}
