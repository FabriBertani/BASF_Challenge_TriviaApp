import 'package:basf_challenge_trivia_app/core/models/questions/response/questions_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

QuestionsResponse deserializeQuestionsResponse(Map<String, dynamic> json) => QuestionsResponse.fromJson(json);

@RestApi(baseUrl: 'https://opentdb.com/', parser: Parser.FlutterCompute)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/api.php?amount=10')
  Future<QuestionsResponse> getQuestions();
}
