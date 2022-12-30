import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_clean_arch/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/generate_mocks.mocks.dart';

void main() {
  late MockConnectivity mockConnectivity;
  late NetworkInfoImpl networkInfoImpl;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfoImpl = NetworkInfoImpl(mockConnectivity);
  });

  group('isConnected', () {
    test('should call Connectivity.checkConnectivity() to check network state',
        () async {
      when(mockConnectivity.checkConnectivity()).thenAnswer(
        (_) async => ConnectivityResult.wifi,
      );

      final result = await networkInfoImpl.isConnected;

      verify(mockConnectivity.checkConnectivity());
      verifyNoMoreInteractions(mockConnectivity);
      expect(result, true);
    });
  });
}
