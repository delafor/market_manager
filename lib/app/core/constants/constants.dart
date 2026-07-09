enum Kpages {
  home,
  login,
  register, welcome,

}

extension KpagesExtension on Kpages {
  String get route => '/$name';
}
