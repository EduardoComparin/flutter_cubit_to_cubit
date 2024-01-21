import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view2.dart';

class TabBarView2Cubit extends Cubit<StateView2> {
  TabBarView2Cubit() : super(const StateView2());

  int? _tabSelecionada = 0;
  int? get tabSelecionada => _tabSelecionada;

  setTabSelecionada(tab) {
    _tabSelecionada = tab;
    emit(state.copyWith(atualizaView: !state.atualizaView));
  }
}
