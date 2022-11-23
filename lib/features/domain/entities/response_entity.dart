import 'package:equatable/equatable.dart';
import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

class ResponseEntity extends Equatable {
  final int? totalCount;
  final bool? incompleteResults;
  final List<RepositoryEntity>? items;

  const ResponseEntity({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  ResponseEntity copyWith({
    final int? totalCount,
    final bool? incompleteResults,
    final List<RepositoryEntity>? items,
  }) {
    return ResponseEntity(
      totalCount: totalCount ?? this.totalCount,
      incompleteResults: incompleteResults ?? this.incompleteResults,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    map['incomplete_results'] = incompleteResults;
    if (items != null) {
      map['items'] = items?.map((value) => value.toJson()).toList();
    }
    return map;
  }

  @override
  List<Object?> get props {
    return [totalCount, incompleteResults, items];
  }
}
