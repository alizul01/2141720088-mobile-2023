import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  final _generateRandomController = StreamController<void>();
  final _randomNumberController = StreamController<int>();

  Sink<void> get generateRandomNumber => _generateRandomController.sink;

  Stream<int> get randomNumber => _randomNumberController.stream;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random();
      final randomNumber = random.nextInt(100);
      _randomNumberController.sink.add(randomNumber);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}