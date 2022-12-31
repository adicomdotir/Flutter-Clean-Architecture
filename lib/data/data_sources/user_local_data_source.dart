import 'dart:convert';

import 'package:flutter_clean_arch/core/error/exceptions.dart';
import 'package:flutter_clean_arch/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const cachedUsers = 'CACHED_USERS';

abstract class UserLocalDataSource {
  Future<List<UserModel>> getLastUsers();
  Future<void> cacheUsers(List<UserModel> usersToCache);
}

class UserLocalDataSourceImpl extends UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<List<UserModel>> getLastUsers() async {
    final cachedUsersString = sharedPreferences.getStringList(cachedUsers);

    final lastCachedUsers = <UserModel>[];

    if (cachedUsersString != null) {
      for (var user in cachedUsersString) {
        lastCachedUsers.add(UserModel.fromJson(json.decode(user)));
      }

      return lastCachedUsers;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUsers(List<UserModel> usersToCache) async {
    final usersString = <String>[];

    for (var user in usersToCache) {
      usersString.add(json.encode(user.toJson()));
    }

    await sharedPreferences.setStringList(cachedUsers, usersString);
  }
}
