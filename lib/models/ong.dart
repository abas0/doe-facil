class Ong {
  String ongName;
  String ongResume;
  String ongImg;

  Ong(this.ongName, this.ongResume, this.ongImg);

  static List<Ong> generateOng() {
    return [
      Ong(
          'Amigos do Bem',
          'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
          'assets/images/amigos.png'
      ),
    ];
  }
}
