import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gitstore/features/presentation/cubits/repository_cubit.dart';
import 'package:flutter_gitstore/features/presentation/pages/home/home_app_bar.dart';
import 'package:flutter_gitstore/features/presentation/pages/home/home_body.dart';
import 'package:flutter_gitstore/locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepositoryCubit>(
      create: (context) => locator()..loadFirst(),
      child: Scaffold(
        appBar: homeAppBar(context),
        body: const HomeBody(),
      ),
    );
  }
}
