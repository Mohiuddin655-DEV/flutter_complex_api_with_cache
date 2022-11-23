import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';
import 'package:flutter_gitstore/features/domain/repositories/git_repository.dart';

class GetRepositoriesUseCase {
  final GitRepository repository;

  GetRepositoriesUseCase({
    required this.repository,
  });

  Future<List<RepositoryEntity>> getEntities({
    required Map<String, String> queryParameters,
  }) {
    return repository.getEntities(
      queryParameters: queryParameters,
    );
  }
}
