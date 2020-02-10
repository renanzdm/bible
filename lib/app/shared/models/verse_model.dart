import 'package:mobx/mobx.dart';

part 'verse_model.g.dart';

class VerseModel extends _VerseModel with _$VerseModel {
  VerseModel(
      {int number, String text, double size = 16, int color = 0xFF467180})
      : super(number: number, text: text, size: size, color: color);

  factory VerseModel.fromJson(Map<String, dynamic> json) => VerseModel(
        number: json["number"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "text": text,
      };
}

abstract class _VerseModel with Store {
  int number;

  @observable
  String text;

  @observable
  double size;

  @observable
  int color;

  _VerseModel(
      {this.number, this.text, this.size = 16, this.color = 0xFF467180});
}
