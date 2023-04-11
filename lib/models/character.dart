class Character {
  final String title, image, description;
  final int id, comics, series, stories, events;
  final List<String> seriesNames;

  Character(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.comics,
      required this.series,
      required this.stories,
      required this.events,
      required this.seriesNames});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        id: json['id'],
        title: json['name'],
        image: json['thumbnail']['path'] + '.' + json['thumbnail']['extension'],
        description: validateDescription(json['description']),
        comics: json['comics']['available'],
        series: json['series']['available'],
        stories: json['stories']['available'],
        events: json['events']['available'],
        seriesNames: extractSeriesNames(json['series']['items']));
  }
}

String validateDescription(String description) {
  if (description == '') {
    description = 'Description empty';
    return description;
  } else {
    return description;
  }
}

List<String> extractSeriesNames(List<dynamic> series) {
  List<String> seriesNames = [];
  for (int i = 0; i < 3 && i < series.length; i++) {
    seriesNames.add(series[i]['name']);
  }
  return seriesNames;
}
