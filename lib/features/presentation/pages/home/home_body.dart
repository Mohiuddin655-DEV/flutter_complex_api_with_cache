import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gitstore/features/presentation/cubits/repository_cubit.dart';

import 'components/repository_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mRepositoryCubit = context.read<RepositoryCubit>();
    return RepositoryList(
      onLoad: mRepositoryCubit.loadNext,
    );
  }
}
