import 'package:basf_challenge_trivia_app/core/models/questions/response/question_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_response.g.dart';

@JsonSerializable()
class QuestionsResponse {
  @JsonKey(name: 'response_code')
  int? responseCode;
  @JsonKey(name: 'results')
  List<QuestionData>? results;

  QuestionsResponse({this.responseCode, this.results});

  factory QuestionsResponse.fromJson(Map<String, dynamic> json) => _$QuestionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionsResponseToJson(this);
}
