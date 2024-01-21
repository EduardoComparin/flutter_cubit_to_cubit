import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view2.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view2.dart';

class View2 extends StatelessWidget {
  const View2({super.key});

  @override
  Widget build(BuildContext context) {
    TabBarView2Cubit cubit2 = context.read<TabBarView2Cubit>();

    return BlocBuilder<TabBarView2Cubit, StateView2>(
      builder: (context, state) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('View 2'),
              const Text('Cubit 2'),
              Text(
                'Value : ${cubit2.tabSelecionada.toString()}',
                style: const TextStyle(
                  fontFamily: 'inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
