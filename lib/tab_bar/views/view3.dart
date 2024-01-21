import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view3.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view3.dart';

class View3 extends StatelessWidget {
  const View3({super.key});

  @override
  Widget build(BuildContext context) {
    TabBarView3Cubit cubit3 = context.read<TabBarView3Cubit>();

    return BlocBuilder<TabBarView3Cubit, StateView3>(builder: (context, state) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('View 3'),
            const Text('Cubit 3'),
            Text(
              'Value : ${cubit3.tabSelecionada.toString()}',
              style: const TextStyle(
                fontFamily: 'inter',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    });
  }
}
