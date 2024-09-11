import 'package:meta/meta.dart';

@immutable
class Event {
  final String id;
  final String title;
  final String decription;
  final DateTime date;
  final String imageUrl;
  //final User owner;

  Event({
    @required this,id,
  });
}
