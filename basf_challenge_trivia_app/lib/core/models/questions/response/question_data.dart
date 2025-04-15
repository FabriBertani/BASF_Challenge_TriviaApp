import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_data.g.dart';

@JsonSerializable()
class QuestionData {
  String? type;
  String? difficulty;
  String? category;
  String? question;
  String? correctAnswer;
  List<String>? incorrectAnswers;

  QuestionData({this.type, this.difficulty, this.category, this.question, this.correctAnswer, this.incorrectAnswers});

  factory QuestionData.fromJson(Map<String, dynamic> json) => _$QuestionDataFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionDataToJson(this);
}
