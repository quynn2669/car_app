import 'state_provider.dart';
import 'dart:async';

class StateBloc{
  StreamController streamController = StreamController();
  final StateProvider provider = StateProvider();

  Stream get status => streamController.stream;

  void toggleAnimation() {
    provider.toggleAnimationValue();
    streamController.sink.add(provider.isAnimating);
  }

  void disponse(){
    streamController.close();
  }
}
final stateBloc = StateBloc();