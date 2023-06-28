import 'package:rxdart/subjects.dart';

class HomeBloc {
  BehaviorSubject<String> sampleBehavior = BehaviorSubject()..sink.add('No Data');

  Stream<String> get testStream => sampleBehavior.stream;

  String _title = 'No Data found';

  Future<void> setFutureText(String title) async {
    _title = title;
  }

  Future<String> getFutureText() async {
    return _title;
  }

  Future<void> setText(String title) async {
    sampleBehavior.sink.add(title);
  }
}
