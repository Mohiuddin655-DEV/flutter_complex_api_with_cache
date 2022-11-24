import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_gitstore/locator.dart';

abstract class ConnectivityUseCase {
  Future<bool> get isConnected;
}

class ConnectivityUseCaseImpl implements ConnectivityUseCase {
  Future<bool> getConnectivityStatus() async {
    final ConnectivityResult status =
        await locator.getAsync<ConnectivityResult>();
    return status == ConnectivityResult.mobile ||
        status == ConnectivityResult.wifi ||
        status == ConnectivityResult.ethernet;
  }

  @override
  Future<bool> get isConnected => getConnectivityStatus();
}
