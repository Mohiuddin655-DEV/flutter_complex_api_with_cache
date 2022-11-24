import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

abstract class RemoteRepositoriesRepo {
  Future<List<RepositoryEntity>> getRepositories({
    required Map<String, String> queryParameters,
  });
}
