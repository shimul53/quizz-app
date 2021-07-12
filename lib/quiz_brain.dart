import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("(1) Some cats are actually allergic to humans", true),
    Question('(2) You can lead a cow down stairs but not up stairs.', false),
    Question(
        '(3) Approximately one quarter of human bones are in the feet.', true),
    Question('(4) A slug\'s blood is green.', true),
    Question('(5) Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('(6) It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        '(7) No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        '(8) In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        '(9) The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        '(10) The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('(11) Google was originally called \"Backrub\".', true),
    Question(
        '(12) Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        '(13) In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
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

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
