import 'package:equatable/equatable.dart';
import 'package:flutter_application_6/models/event.dart';

abstract class EventListState extends Equatable {
  EventListState([List props = const []]) : super(); // super(props)
}

class EventListEmpty extends EventListState {
  @override
  String toString() => 'EventListEmpty';

  @override
  List<Object?> get props => throw UnimplementedError();
}

class EventListInProgress extends EventListState {
  @override
  String toString() => 'EventListInProgress';

  @override
  List<Object?> get props => throw UnimplementedError();
}

class EventListSuccess extends EventListState {
  final Stream<List<Event>> eventList;

  EventListSuccess({required this.eventList}) : super([eventList]);

  @override
  String toString() => 'EventListSuccess';

  @override
  List<Object?> get props => throw UnimplementedError();
}

class EventListFailure extends EventListState {
  final Error error;

  EventListFailure({required this.error}) : super([error]);

  @override
  String toString() => 'EventListFailure';

  @override
  List<Object?> get props => throw UnimplementedError();
}
