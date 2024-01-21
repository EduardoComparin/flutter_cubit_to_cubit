import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view1.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view1.dart';

class View1 extends StatelessWidget {
  const View1({super.key});

  @override
  Widget build(BuildContext context) {
    TabBarView1Cubit cubit1 = context.read<TabBarView1Cubit>();

    return BlocBuilder<TabBarView1Cubit, StateView1>(
      builder: (context, state) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('View 1'),
              const Text('Cubit 1'),
              Text(
                'Value : ${cubit1.tabSelecionada.toString()}',
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
