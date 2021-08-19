import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        q: 'Facebook is not as popular as it used to be, it’s losing its audiences?',
        a: false),
    Question(q: 'KPI stands for Key Performance Indicator...', a: true),
    Question(q: 'There are three rivers in Saudi Arabia', a: false),
    Question(q: 'ASO stands for app store optimization...', a: true),
    Question(
        q: 'Your employer is obligated to give you a raise every two years?',
        a: false),
    Question(
        q: 'When the Eiffel Tower was unveiled, the Parisian art community hated it?',
        a: true),
    Question(
        q: 'There are more ancient pyramids in Sudan than in Egypt..', a: true),
    Question(q: 'Vatican city is the largest city in the world', a: false),
    Question(q: 'Imposters syndrome is a mental illness?', a: false),
    Question(
        q: 'Smack is the word used to address a group of jellyfish', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
