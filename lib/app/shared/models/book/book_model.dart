class BooksModel {
  Abbrev abbrev;
  String author;
  int chapters;
  String group;
  String name;
  String testament;

  BooksModel({
    this.abbrev,
    this.author,
    this.chapters,
    this.group,
    this.name,
    this.testament,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        abbrev: Abbrev.fromJson(json["abbrev"]),
        author: json["author"],
        chapters: json["chapters"],
        group: json["group"],
        name: json["name"],
        testament: json["testament"],
      );

  Map<String, dynamic> toJson() => {
        "abbrev": abbrev.toJson(),
        "author": author,
        "chapters": chapters,
        "group": group,
        "name": name,
        "testament": testament,
      };
}

class Abbrev {
  String pt;
  String en;

  Abbrev({
    this.pt,
    this.en,
  });

  factory Abbrev.fromJson(Map<String, dynamic> json) => Abbrev(
        pt: json["pt"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "pt": pt,
        "en": en,
      };
}
