import 'package:equatable/equatable.dart';

abstract class EventListEvent extends Equatable {
  EventListEvent([List props = const []]) : super(); // FIXME: super(props)
}

class EventListLoad extends EventListEvent {
  @override
  String toString() => 'EventListLoad';

  @override
  List<Object?> get props => throw UnimplementedError();
}
