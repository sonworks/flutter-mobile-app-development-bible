import 'package:flutter_application_6/bloc/event_list/event_list_event.dart';
import 'package:flutter_application_6/bloc/event_list/event_list_repository.dart';
import 'package:flutter_application_6/bloc/event_list/event_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventListBloc extends Bloc<EventListEvent, EventListState> {
  final EventListRepository _eventListRepository;

  EventListBloc(super.initialState,
      {required EventListRepository eventListRepository})
      : _eventListRepository = eventListRepository;

  @override
  EventListState get initialState => EventListEmpty();

  @override
  Stream<EventListState> mapEventToState(EventListEvent event) async* {
    if (event is EventListLoad) {
      yield* _mapEventListLoadToState();
    }
  }

  Stream<EventListState> _mapEventListLoadToState() async* {
    yield EventListInProgress();
    try {
      yield EventListSuccess(eventList: _eventListRepository.fetch());
    } catch (_) {
      yield EventListFailure(error: _);
    }
  }
}
