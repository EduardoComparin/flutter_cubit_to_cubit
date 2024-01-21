import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view1.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view2.dart';
import 'package:flutter_multi_cubit/tab_bar/cubit/cubit_view3.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view1.dart';
import 'package:flutter_multi_cubit/tab_bar/views/view1.dart';
import 'package:flutter_multi_cubit/tab_bar/views/view2.dart';
import 'package:flutter_multi_cubit/tab_bar/views/view3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TabBarView1Cubit>(create: (_) => TabBarView1Cubit()),
        BlocProvider<TabBarView2Cubit>(create: (_) => TabBarView2Cubit()),
        BlocProvider<TabBarView3Cubit>(create: (_) => TabBarView3Cubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: MultiBlocListener(
            listeners: [
              BlocListener<TabBarView1Cubit, StateView1>(
                listener: (context, state) {
                  int? valor =
                      context.read<TabBarView1Cubit>().tabSelecionada ??
                          0; // get value cubit 1
                  context
                      .read<TabBarView2Cubit>()
                      .setTabSelecionada(valor); //set cubit 2
                  context
                      .read<TabBarView3Cubit>()
                      .setTabSelecionada(valor); //set cubit 3
                },
              ),
              /*
              If you need to check the status of other cubes, you can uncomment the following lines
              // State 2
              BlocListener<TabBarView2Cubit, StateView2>(
                listener: (context, state) {},
              ),
               // State 3
              BlocListener<TabBarView3Cubit, StateView3>(
                listener: (context, state) {},
              ),
              */
            ],
            child: Scaffold(
              floatingActionButton: Builder(builder: (otherContext) {
                return FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    int? valor =
                        otherContext.read<TabBarView1Cubit>().tabSelecionada ??
                            0;
                    otherContext
                        .read<TabBarView1Cubit>()
                        .abaAlterada(valor + 1);
                  },
                  child: const Icon(Icons.add),
                );
              }),
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: const Center(child: Text('Cubit to Cubit')),
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Material(
                    color: Colors.green,
                    shape: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black12)),
                    child: TabBar(
                        labelStyle: TextStyle(color: Colors.white),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(text: 'view1'),
                          Tab(text: 'view2'),
                          Tab(text: 'view3'),
                        ]),
                  ),
                ),
              ),
              body: const TabBarView(
                children: [
                  View1(),
                  View2(),
                  View3(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
