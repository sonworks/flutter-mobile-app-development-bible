import 'package:meta/meta.dart';

@immutable
class Event {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final String imageUrl;
  //final User owner;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.imageUrl,
    // @required this.owner,
  });
}
