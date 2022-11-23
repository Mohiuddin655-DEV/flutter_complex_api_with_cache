import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

import 'owner_model.dart';

class RepositoryModel extends RepositoryEntity {
  RepositoryModel({
    final int? id,
    final String? nodeId,
    final String? name,
    final String? fullName,
    final OwnerModel? owner,
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
  }) : super(
          id: id,
          nodeId: nodeId,
          name: name,
          fullName: fullName,
          owner: owner,
          private: private,
          htmlUrl: htmlUrl,
          description: description,
          fork: fork,
          url: url,
          forksUrl: forksUrl,
          keysUrl: keysUrl,
          collaboratorsUrl: collaboratorsUrl,
          teamsUrl: teamsUrl,
          hooksUrl: hooksUrl,
          issueEventsUrl: issueEventsUrl,
          eventsUrl: eventsUrl,
          assigneesUrl: assigneesUrl,
          branchesUrl: branchesUrl,
          tagsUrl: tagsUrl,
          blobsUrl: blobsUrl,
          gitTagsUrl: gitTagsUrl,
          gitRefsUrl: gitRefsUrl,
          treesUrl: treesUrl,
          statusesUrl: statusesUrl,
          languagesUrl: languagesUrl,
          stargazersUrl: stargazersUrl,
          contributorsUrl: contributorsUrl,
          subscribersUrl: subscribersUrl,
          subscriptionUrl: subscriptionUrl,
          commitsUrl: commitsUrl,
          gitCommitsUrl: gitCommitsUrl,
          commentsUrl: commentsUrl,
          issueCommentUrl: issueCommentUrl,
          contentsUrl: contentsUrl,
          compareUrl: compareUrl,
          mergesUrl: mergesUrl,
          archiveUrl: archiveUrl,
          downloadsUrl: downloadsUrl,
          issuesUrl: issuesUrl,
          pullsUrl: pullsUrl,
          milestonesUrl: milestonesUrl,
          notificationsUrl: notificationsUrl,
          labelsUrl: labelsUrl,
          deploymentsUrl: deploymentsUrl,
          releasesUrl: releasesUrl,
        );

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    final int? id = json['id'];
    final String? nodeId = json['node_id'];
    final String? name = json['name'];
    final String? fullName = json['full_name'];
    final Map<String, dynamic>? ownerJson = json['owner'];
    final OwnerModel? owner =
        ownerJson != null ? OwnerModel.fromJson(ownerJson) : null;
    final bool? private = json['private'];
    final String? htmlUrl = json['html_url'];
    final String? description = json['description'];
    final bool? fork = json['fork'];
    final String? url = json['url'];
    final String? forksUrl = json['forks_url'];
    final String? keysUrl = json['keys_url'];
    final String? collaboratorsUrl = json['collaborators_url'];
    final String? teamsUrl = json['teams_url'];
    final String? hooksUrl = json['hooks_url'];
    final String? issueEventsUrl = json['issue_events_url'];
    final String? eventsUrl = json['events_url'];
    final String? assigneesUrl = json['assignees_url'];
    final String? branchesUrl = json['branches_url'];
    final String? tagsUrl = json['tags_url'];
    final String? blobsUrl = json['blobs_url'];
    final String? gitTagsUrl = json['git_tags_url'];
    final String? gitRefsUrl = json['git_refs_url'];
    final String? treesUrl = json['trees_url'];
    final String? statusesUrl = json['statuses_url'];
    final String? languagesUrl = json['languages_url'];
    final String? stargazersUrl = json['stargazers_url'];
    final String? contributorsUrl = json['contributors_url'];
    final String? subscribersUrl = json['subscribers_url'];
    final String? subscriptionUrl = json['subscription_url'];
    final String? commitsUrl = json['commits_url'];
    final String? gitCommitsUrl = json['git_commits_url'];
    final String? commentsUrl = json['comments_url'];
    final String? issueCommentUrl = json['issue_comment_url'];
    final String? contentsUrl = json['contents_url'];
    final String? compareUrl = json['compare_url'];
    final String? mergesUrl = json['merges_url'];
    final String? archiveUrl = json['archive_url'];
    final String? downloadsUrl = json['downloads_url'];
    final String? issuesUrl = json['issues_url'];
    final String? pullsUrl = json['pulls_url'];
    final String? milestonesUrl = json['milestones_url'];
    final String? notificationsUrl = json['notifications_url'];
    final String? labelsUrl = json['labels_url'];
    final String? deploymentsUrl = json['deployments_url'];
    final String? releasesUrl = json['releases_url'];
    return RepositoryModel(
      id: id,
      nodeId: nodeId,
      name: name,
      fullName: fullName,
      owner: owner,
      private: private,
      htmlUrl: htmlUrl,
      description: description,
      fork: fork,
      url: url,
      forksUrl: forksUrl,
      keysUrl: keysUrl,
      collaboratorsUrl: collaboratorsUrl,
      teamsUrl: teamsUrl,
      hooksUrl: hooksUrl,
      issueEventsUrl: issueEventsUrl,
      eventsUrl: eventsUrl,
      assigneesUrl: assigneesUrl,
      branchesUrl: branchesUrl,
      tagsUrl: tagsUrl,
      blobsUrl: blobsUrl,
      gitTagsUrl: gitTagsUrl,
      gitRefsUrl: gitRefsUrl,
      treesUrl: treesUrl,
      statusesUrl: statusesUrl,
      languagesUrl: languagesUrl,
      stargazersUrl: stargazersUrl,
      contributorsUrl: contributorsUrl,
      subscribersUrl: subscribersUrl,
      subscriptionUrl: subscriptionUrl,
      commitsUrl: commitsUrl,
      gitCommitsUrl: gitCommitsUrl,
      commentsUrl: commentsUrl,
      issueCommentUrl: issueCommentUrl,
      contentsUrl: contentsUrl,
      compareUrl: compareUrl,
      mergesUrl: mergesUrl,
      archiveUrl: archiveUrl,
      downloadsUrl: downloadsUrl,
      issuesUrl: issuesUrl,
      pullsUrl: pullsUrl,
      milestonesUrl: milestonesUrl,
      notificationsUrl: notificationsUrl,
      labelsUrl: labelsUrl,
      deploymentsUrl: deploymentsUrl,
      releasesUrl: releasesUrl,
    );
  }
}
