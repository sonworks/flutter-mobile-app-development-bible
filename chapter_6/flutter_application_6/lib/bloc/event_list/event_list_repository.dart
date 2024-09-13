import 'package:flutter_application_6/models/event.dart';

abstract class EventListRepository {
  Stream<List<Event>> fetch();
}
