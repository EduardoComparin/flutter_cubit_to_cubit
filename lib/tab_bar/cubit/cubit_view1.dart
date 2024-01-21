import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_cubit/tab_bar/state/state_view1.dart';

class TabBarView1Cubit extends Cubit<StateView1> {
  TabBarView1Cubit() : super(const StateView1());

  int? _tabSelecionada = 0;
  int? get tabSelecionada => _tabSelecionada;

  abaAlterada(tab) {
    _tabSelecionada = tab;
    emit(state.copyWith(atualizaView: !state.atualizaView));
  }
}
