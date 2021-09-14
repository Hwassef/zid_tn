class Item {
  int nb;
  bool Vip;
  String Image;
  String TimeLeft;
  String ParticpantsPercent;
  String Title;
  String MagasinPrice;
  String DepartPrice;
  String Remise;
  String ButtonText;
  bool isFavorite;
  bool particpated;

  Item({
    this.nb = 0,
    this.Vip = true,
    this.Image = "",
    this.TimeLeft = "",
    this.ParticpantsPercent = "",
    this.Title = "",
    this.MagasinPrice = "",
    this.DepartPrice = "",
    this.Remise = "",
    this.ButtonText = "",
    this.isFavorite = false,
    this.particpated = false,
  });
}
