import 'package:bloc_sample/home/home_repo.dart';
import 'package:rxdart/subjects.dart';

class HomeBloc {
  final HomeRepo _homeRepo = HomeRepo();
  BehaviorSubject<String> sampleBehavior = BehaviorSubject()
    ..sink.add('No Data');

  Stream<String> get testStream => sampleBehavior.stream;

  String _title = 'No Data found';

  Future<void> setFutureText(String title) async {
    _title = title;
  }

  Future<String> getFutureText() async {
    return _title;
  }

  Future<void> setText(String title) async {
    String repoString = _homeRepo.concatString();
    sampleBehavior.sink.add('$title - $repoString');
  }
}
