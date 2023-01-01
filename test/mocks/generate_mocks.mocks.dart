// Mocks generated by Mockito 5.3.2 from annotations
// in flutter_clean_arch/test/mocks/generate_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i8;

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart'
    as _i6;
import 'package:dartz/dartz.dart' as _i3;
import 'package:dio/dio.dart' as _i2;
import 'package:dio/src/options.dart' as _i7;
import 'package:flutter_clean_arch/core/error/failure.dart' as _i15;
import 'package:flutter_clean_arch/core/network/network_info.dart' as _i10;
import 'package:flutter_clean_arch/data/data_sources/user_local_data_source.dart'
    as _i13;
import 'package:flutter_clean_arch/data/data_sources/user_remote_data_source.dart'
    as _i11;
import 'package:flutter_clean_arch/data/models/user_model.dart' as _i12;
import 'package:flutter_clean_arch/domain/entities/user.dart' as _i16;
import 'package:flutter_clean_arch/domain/repositories/user_repository.dart'
    as _i14;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponseBody_0 extends _i1.SmartFake implements _i2.ResponseBody {
  _FakeResponseBody_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Connectivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivity extends _i1.Mock implements _i4.Connectivity {
  MockConnectivity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Stream<_i6.ConnectivityResult> get onConnectivityChanged =>
      (super.noSuchMethod(
        Invocation.getter(#onConnectivityChanged),
        returnValue: _i5.Stream<_i6.ConnectivityResult>.empty(),
      ) as _i5.Stream<_i6.ConnectivityResult>);
  @override
  _i5.Future<_i6.ConnectivityResult> checkConnectivity() => (super.noSuchMethod(
        Invocation.method(
          #checkConnectivity,
          [],
        ),
        returnValue: _i5.Future<_i6.ConnectivityResult>.value(
            _i6.ConnectivityResult.bluetooth),
      ) as _i5.Future<_i6.ConnectivityResult>);
}

/// A class which mocks [HttpClientAdapter].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClientAdapter extends _i1.Mock implements _i2.HttpClientAdapter {
  MockHttpClientAdapter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.ResponseBody> fetch(
    _i7.RequestOptions? options,
    _i5.Stream<_i8.Uint8List>? requestStream,
    _i5.Future<dynamic>? cancelFuture,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [
            options,
            requestStream,
            cancelFuture,
          ],
        ),
        returnValue: _i5.Future<_i2.ResponseBody>.value(_FakeResponseBody_0(
          this,
          Invocation.method(
            #fetch,
            [
              options,
              requestStream,
              cancelFuture,
            ],
          ),
        )),
      ) as _i5.Future<_i2.ResponseBody>);
  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i9.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);
  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);
  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);
  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);
  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);
  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);
  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);
  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);
  @override
  _i5.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i10.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [UserRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRemoteDataSource extends _i1.Mock
    implements _i11.UserRemoteDataSource {
  MockUserRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i12.UserModel>> getUsers() => (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [],
        ),
        returnValue: _i5.Future<List<_i12.UserModel>>.value(<_i12.UserModel>[]),
      ) as _i5.Future<List<_i12.UserModel>>);
}

/// A class which mocks [UserLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserLocalDataSource extends _i1.Mock
    implements _i13.UserLocalDataSource {
  MockUserLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i12.UserModel>> getLastUsers() => (super.noSuchMethod(
        Invocation.method(
          #getLastUsers,
          [],
        ),
        returnValue: _i5.Future<List<_i12.UserModel>>.value(<_i12.UserModel>[]),
      ) as _i5.Future<List<_i12.UserModel>>);
  @override
  _i5.Future<void> cacheUsers(List<_i12.UserModel>? usersToCache) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheUsers,
          [usersToCache],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i14.UserRepository {
  MockUserRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.Either<_i15.Failure, List<_i16.User>>> getUsers() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i15.Failure, List<_i16.User>>>.value(
                _FakeEither_1<_i15.Failure, List<_i16.User>>(
          this,
          Invocation.method(
            #getUsers,
            [],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i15.Failure, List<_i16.User>>>);
}
