import 'package:bible_quadrangular/app/shared/models/verse_model.dart';

class ChapterModel {
  Book book;
  Chapter chapter;
  List<VerseModel> verses;

  ChapterModel({
    this.book,
    this.chapter,
    this.verses,
  });

  factory ChapterModel.fromJson(Map<String, dynamic> json) => ChapterModel(
        book: Book.fromJson(json["book"]),
        chapter: Chapter.fromJson(json["chapter"]),
        verses: List<VerseModel>.from(
            json["verses"].map((x) => VerseModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "book": book.toJson(),
        "chapter": chapter.toJson(),
        "verses": List<dynamic>.from(verses.map((x) => x.toJson())),
      };
}

class Book {
  Abbrev abbrev;
  String name;
  String author;
  String group;
  String version;

  Book({
    this.abbrev,
    this.name,
    this.author,
    this.group,
    this.version,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        abbrev: Abbrev.fromJson(json["abbrev"]),
        name: json["name"],
        author: json["author"],
        group: json["group"],
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "abbrev": abbrev.toJson(),
        "name": name,
        "author": author,
        "group": group,
        "version": version,
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

class Chapter {
  int number;
  int verses;

  Chapter({
    this.number,
    this.verses,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        number: json["number"],
        verses: json["verses"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "verses": verses,
      };
}
