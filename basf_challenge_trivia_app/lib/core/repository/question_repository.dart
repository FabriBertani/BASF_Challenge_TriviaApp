import 'package:basf_challenge_trivia_app/core/models/questions/response/question_data.dart';
import 'package:basf_challenge_trivia_app/core/service/api_service.dart';

class QuestionRepository {
  late ApiService _apiService;

  QuestionRepository(ApiService apiService) {
    _apiService = apiService;
  }

  Future<List<QuestionData>?> getQuestions() async {
    var questionsResponse = await _apiService.apiClient.getQuestions();

    return questionsResponse.results;
  }
}
