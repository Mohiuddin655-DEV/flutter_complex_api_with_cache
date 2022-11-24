import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';
import 'package:flutter_gitstore/features/domain/repositories/remote_repositories_repo.dart';

class GetRemoteRepositoriesUseCase {
  final RemoteRepositoriesRepo repository;

  GetRemoteRepositoriesUseCase({
    required this.repository,
  });

  Future<List<RepositoryEntity>> getRepositories({
    required Map<String, String> queryParameters,
  }) {
    return repository.getRepositories(
      queryParameters: queryParameters,
    );
  }
}
