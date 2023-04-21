class AppRegExps {
  static const String email =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  //example password Aa0#888?
  static const String password = r'^(?=.*?[0-9]).{8,}$';
}
