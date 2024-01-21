import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view3.dart';

class TabBarView3Cubit extends Cubit<StateView3> {
  TabBarView3Cubit() : super(const StateView3());

  int? _tabSelecionada = 0;
  int? get tabSelecionada => _tabSelecionada;

  setTabSelecionada(tab) {
    _tabSelecionada = tab;
    emit(state.copyWith(atualizaView: !state.atualizaView));
  }
}
