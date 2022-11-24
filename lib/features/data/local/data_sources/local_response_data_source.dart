import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

abstract class LocalResponseDataSource {
  Future<bool> setConnectivityStatus({
    required bool isConnected,
  });

  Future<bool> setRepositories({
    required String key,
    required List<RepositoryEntity> repositories,
  });

  Future<List<RepositoryEntity>> getRepositories({
    required String key,
  });
}
