import 'package:equatable/equatable.dart';

import 'owner_entity.dart';

class RepositoryEntity extends Equatable {
  final int? id;
  final String? nodeId;
  final String? name;
  final String? fullName;
  final OwnerEntity? owner;
  final bool? private;
  final String? htmlUrl;
  final String? description;
  final bool? fork;
  final String? url;
  final String? forksUrl;
  final String? keysUrl;
  final String? collaboratorsUrl;
  final String? teamsUrl;
  final String? hooksUrl;
  final String? issueEventsUrl;
  final String? eventsUrl;
  final String? assigneesUrl;
  final String? branchesUrl;
  final String? tagsUrl;
  final String? blobsUrl;
  final String? gitTagsUrl;
  final String? gitRefsUrl;
  final String? treesUrl;
  final String? statusesUrl;
  final String? languagesUrl;
  final String? stargazersUrl;
  final String? contributorsUrl;
  final String? subscribersUrl;
  final String? subscriptionUrl;
  final String? commitsUrl;
  final String? gitCommitsUrl;
  final String? commentsUrl;
  final String? issueCommentUrl;
  final String? contentsUrl;
  final String? compareUrl;
  final String? mergesUrl;
  final String? archiveUrl;
  final String? downloadsUrl;
  final String? issuesUrl;
  final String? pullsUrl;
  final String? milestonesUrl;
  final String? notificationsUrl;
  final String? labelsUrl;
  final String? deploymentsUrl;
  final String? releasesUrl;

  RepositoryEntity({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.private,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.deploymentsUrl,
    this.releasesUrl,
  });

  RepositoryEntity copyWith({
    final int? id,
    final String? nodeId,
    final String? name,
    final String? fullName,
    final OwnerEntity? owner,
    final bool? private,
    final String? htmlUrl,
    final String? description,
    final bool? fork,
    final String? url,
    final String? forksUrl,
    final String? keysUrl,
    final String? collaboratorsUrl,
    final String? teamsUrl,
    final String? hooksUrl,
    final String? issueEventsUrl,
    final String? eventsUrl,
    final String? assigneesUrl,
    final String? branchesUrl,
    final String? tagsUrl,
    final String? blobsUrl,
    final String? gitTagsUrl,
    final String? gitRefsUrl,
    final String? treesUrl,
    final String? statusesUrl,
    final String? languagesUrl,
    final String? stargazersUrl,
    final String? contributorsUrl,
    final String? subscribersUrl,
    final String? subscriptionUrl,
    final String? commitsUrl,
    final String? gitCommitsUrl,
    final String? commentsUrl,
    final String? issueCommentUrl,
    final String? contentsUrl,
    final String? compareUrl,
    final String? mergesUrl,
    final String? archiveUrl,
    final String? downloadsUrl,
    final String? issuesUrl,
    final String? pullsUrl,
    final String? milestonesUrl,
    final String? notificationsUrl,
    final String? labelsUrl,
    final String? deploymentsUrl,
    final String? releasesUrl,
  }) {
    return RepositoryEntity(
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      owner: owner ?? this.owner,
      private: private ?? this.private,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      description: description ?? this.description,
      fork: fork ?? this.fork,
      url: url ?? this.url,
      forksUrl: forksUrl ?? this.forksUrl,
      keysUrl: keysUrl ?? this.keysUrl,
      collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
      teamsUrl: teamsUrl ?? this.teamsUrl,
      hooksUrl: hooksUrl ?? this.hooksUrl,
      issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      assigneesUrl: assigneesUrl ?? this.assigneesUrl,
      branchesUrl: branchesUrl ?? this.branchesUrl,
      tagsUrl: tagsUrl ?? this.tagsUrl,
      blobsUrl: blobsUrl ?? this.blobsUrl,
      gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
      gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
      treesUrl: treesUrl ?? this.treesUrl,
      statusesUrl: statusesUrl ?? this.statusesUrl,
      languagesUrl: languagesUrl ?? this.languagesUrl,
      stargazersUrl: stargazersUrl ?? this.stargazersUrl,
      contributorsUrl: contributorsUrl ?? this.contributorsUrl,
      subscribersUrl: subscribersUrl ?? this.subscribersUrl,
      subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
      commitsUrl: commitsUrl ?? this.commitsUrl,
      gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
      commentsUrl: commentsUrl ?? this.commentsUrl,
      issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
      contentsUrl: contentsUrl ?? this.contentsUrl,
      compareUrl: compareUrl ?? this.compareUrl,
      mergesUrl: mergesUrl ?? this.mergesUrl,
      archiveUrl: archiveUrl ?? this.archiveUrl,
      downloadsUrl: downloadsUrl ?? this.downloadsUrl,
      issuesUrl: issuesUrl ?? this.issuesUrl,
      pullsUrl: pullsUrl ?? this.pullsUrl,
      milestonesUrl: milestonesUrl ?? this.milestonesUrl,
      notificationsUrl: notificationsUrl ?? this.notificationsUrl,
      labelsUrl: labelsUrl ?? this.labelsUrl,
      deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
      releasesUrl: releasesUrl ?? this.releasesUrl,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['node_id'] = nodeId;
    map['name'] = name;
    map['full_name'] = fullName;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    map['private'] = private;
    map['html_url'] = htmlUrl;
    map['description'] = description;
    map['fork'] = fork;
    map['url'] = url;
    map['forks_url'] = forksUrl;
    map['keys_url'] = keysUrl;
    map['collaborators_url'] = collaboratorsUrl;
    map['teams_url'] = teamsUrl;
    map['hooks_url'] = hooksUrl;
    map['issue_events_url'] = issueEventsUrl;
    map['events_url'] = eventsUrl;
    map['assignees_url'] = assigneesUrl;
    map['branches_url'] = branchesUrl;
    map['tags_url'] = tagsUrl;
    map['blobs_url'] = blobsUrl;
    map['git_tags_url'] = gitTagsUrl;
    map['git_refs_url'] = gitRefsUrl;
    map['trees_url'] = treesUrl;
    map['statuses_url'] = statusesUrl;
    map['languages_url'] = languagesUrl;
    map['stargazers_url'] = stargazersUrl;
    map['contributors_url'] = contributorsUrl;
    map['subscribers_url'] = subscribersUrl;
    map['subscription_url'] = subscriptionUrl;
    map['commits_url'] = commitsUrl;
    map['git_commits_url'] = gitCommitsUrl;
    map['comments_url'] = commentsUrl;
    map['issue_comment_url'] = issueCommentUrl;
    map['contents_url'] = contentsUrl;
    map['compare_url'] = compareUrl;
    map['merges_url'] = mergesUrl;
    map['archive_url'] = archiveUrl;
    map['downloads_url'] = downloadsUrl;
    map['issues_url'] = issuesUrl;
    map['pulls_url'] = pullsUrl;
    map['milestones_url'] = milestonesUrl;
    map['notifications_url'] = notificationsUrl;
    map['labels_url'] = labelsUrl;
    map['deployments_url'] = deploymentsUrl;
    map['releases_url'] = releasesUrl;
    return map;
  }

  @override
  List<Object?> get props {
    return [
      id,
      nodeId,
      name,
      fullName,
      owner,
      private,
      htmlUrl,
      description,
      fork,
      url,
      forksUrl,
      keysUrl,
      collaboratorsUrl,
      teamsUrl,
      hooksUrl,
      issueEventsUrl,
      eventsUrl,
      assigneesUrl,
      branchesUrl,
      tagsUrl,
      blobsUrl,
      gitTagsUrl,
      gitRefsUrl,
      treesUrl,
      statusesUrl,
      languagesUrl,
      stargazersUrl,
      contributorsUrl,
      subscribersUrl,
      subscriptionUrl,
      commitsUrl,
      gitCommitsUrl,
      commentsUrl,
      issueCommentUrl,
      contentsUrl,
      compareUrl,
      mergesUrl,
      archiveUrl,
      downloadsUrl,
      issuesUrl,
      pullsUrl,
      milestonesUrl,
      notificationsUrl,
      labelsUrl,
      deploymentsUrl,
      releasesUrl,
    ];
  }
}
