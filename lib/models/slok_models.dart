class slok {
  int id;
  String name;
  String chapter_summary_hindi;

  slok({
    required this.id,
    required this.name,
    required this.chapter_summary_hindi,
  });

  factory slok.fromMap({required Map data}) {
    return slok(
      id: data['id'],
      name: data['name'],
      chapter_summary_hindi: data['chapter_summary_hindi'],
    );
  }
}

class slok1 {
  String verse;
  String san;
  String guj;
  String en;
  String hi;

  slok1({
    required this.verse,
    required this.san,
    required this.en,
    required this.guj,
    required this.hi,
  });

  factory slok1.fromMap({required Map data}) {
    return slok1(
      verse: data['verse'],
      san: data['san'],
      en: data['en'],
      guj: data['guj'],
      hi: data['hi'],
    );
  }
}
