import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

@GenerateMocks(
  [
    Connectivity,
    HttpClientAdapter,
  ],
)
void generateMocks() {}
