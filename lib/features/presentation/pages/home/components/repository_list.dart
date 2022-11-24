import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gitstore/core/utils/controllers/widget_controller.dart';
import 'package:flutter_gitstore/features/presentation/cubits/cubit_state.dart';
import 'package:flutter_gitstore/features/presentation/cubits/repository_cubit.dart';
import 'package:flutter_gitstore/features/presentation/pages/home/components/repository_item.dart';
import 'package:flutter_gitstore/features/presentation/widgets/initial_loading_widget.dart';
import 'package:flutter_gitstore/features/presentation/widgets/loading_indicator.dart';

class RepositoryList extends StatelessWidget {
  final Function() onLoad;

  const RepositoryList({
    Key? key,
    required this.onLoad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mController = Controller.of(context).paging(func: onLoad);

    return BlocBuilder<RepositoryCubit, CubitState>(
      builder: (context, state) {
        if (state.result.isNotEmpty) {
          final items = state.result;
          return ListView.separated(
            controller: mController,
            itemBuilder: (context, index) {
              if (index < items.length) {
                final item = items[index];
                return RepositoryItem(
                  item: item,
                );
              } else {
                return const LoadingIndicator();
              }
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 8);
            },
            itemCount: items.length + (state.isLoading ? 1 : 0),
          );
        } else {
          return const InitialLoadingView();
        }
      },
    );
  }
}
