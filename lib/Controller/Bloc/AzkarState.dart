class NewsState{}
class InstialState extends NewsState{}
class Load extends NewsState{}
class Done extends NewsState{}
class Decrease extends NewsState{}
class Error extends NewsState{
  String error;

  Error(
  {
    required this.error
}
      );
}