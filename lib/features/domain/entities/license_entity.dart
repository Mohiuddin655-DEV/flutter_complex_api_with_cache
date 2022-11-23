import 'package:equatable/equatable.dart';

class LicenseEntity extends Equatable {
  final String? key;
  final String? name;
  final String? spdxId;
  final String? url;
  final String? nodeId;

  LicenseEntity({
    this.key,
    this.name,
    this.spdxId,
    this.url,
    this.nodeId,
  });

  LicenseEntity copyWith({
    final String? key,
    final String? name,
    final String? spdxId,
    final String? url,
    final String? nodeId,
  }) {
    return LicenseEntity(
      key: key ?? this.key,
      name: name ?? this.name,
      spdxId: spdxId ?? this.spdxId,
      url: url ?? this.url,
      nodeId: nodeId ?? this.nodeId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'spdx_id': spdxId,
      'url': url,
      'node_id': nodeId
    };
  }

  @override
  List<Object?> get props => [key, name, spdxId, url, nodeId];
}
