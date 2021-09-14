import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentaCaMarche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Image.asset('assets/images/Logo.png'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black87,
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return true;
        },
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    top: 25.0,
                    left: 24.0,
                  ),
                  child: Text(
                    'Comment ça marche',
                    style: GoogleFonts.roboto(
                      height: 0.8,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      color: Colors.cyan,
                      height: 204,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 24.0,
                      ),
                      child: Center(
                        child: Text(
                          "Video",
                          style: GoogleFonts.roboto(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  """Ça vous dit de payer votre iPhone ou votre voyage jusqu’à 80% moins cher? zid.tn est le premier site d’enchère libre EN TUNISIE. Vous enchérissez sur le produit qui vous intéresse, et si vous êtes le dernier à avoir la main, il est à vous !
      
                                        Si vous planifiez d’acheter un smartphone, une télévision écran plat UHD 55p, ou peut-être un voyage pour deux au Thaïlande……ça tombe bien, le site zid.tn va vous permettre d’acheter ce que vous voulez à bas prix (jusqu’à 80 % de remise….oui c’est vrai jusqu’à 80% de remise) le site va littéralement bouleverser vos habitudes d’achat sur le web.
      
                                        Pourquoi ? Parce qu’il s’agit du premier site d’enchère libre en Tunisie. Vous achetez votre droit de participations (non remboursable) dans une salle d’enchère en ligne mettant en vente le produit qui vous intéresse. Une fois la salle remplie de participants, vous pouvez alors enchérir sur ce produit.
      
                                        Vous êtes à tous les coups gagnants
      
                                        En effet les frais correspondants à votre droit de participation vous seront retournés sous forme de remise considérablement supérieure aux frais de participations payés. Zid.tn propose de nombreux produits high tech et électroménagers… (iPhone 10(s), TV LED Samsung, voyage pour deux au Thaïlande, Malaisie, Turquie…).
      
                                        Zid.tn vous offre une nouvelle alternative pour vos achats : l’enchère en ligne. Les enchères sont un moyen efficace pour obtenir l’objet de ses convoitises à bas coût tout en s’amusant. Zid.tn a pour ambition de révolutionner vos achats de tous genres ! De plus, Zid.tn, c’est 0% arnaque, 100% garanti et sécurisé. Le site repose sur le nombre d’utilisateurs présents : plus ils sont présents, plus vite les salles d’enchères pourront être ouvertes.
      
                                        En bref, voici les étapes d’inscription simplifiées :
      
                                            1- Tout d’abord vous devez vous-inscrire à notre site web www.Zid.tn en créant votre compte personnel.
      
                                            2- Puis vous devez choisir la salle d’enchère du produit désiré. 
      
                                            3- Dès que le choix du produit est fait, vous devez vous-inscrire à la salle correspondante en payant les frais de participation.
      
                                            4- Une fois la salle d’enchère est remplie, un email de confirmation vous sera envoyé afin de vous informer de la date et l’heure exacte du commencement de l’enchère.
      
                                            Vous êtes déjà inscrits à une salle d’enchère ? 
      
                                            L’enchère débutera bientôt et vous n’avez aucune idée sur le processus de l’enchère ?
      
                                            Veuillez comprendre ces points importants afin de maximiser vos chances pour remporter l’enchère :
      
                                            - Le prix du départ de chaque produit mis en enchère sera 1 Dinar.
      
                                            - Les participants à l’enchère pourront miser par 100 milimes ou bien 200 milimes seulement.
      
                                            - Chaque participant a le droit à 5 mises gratuites durant l’enchère.
      
                                            - Si vous avez utilisé vos 5 mises gratuites, vous pourrez acheter des Jetons Zid de mise ; (5 jetons=7dt / 10 jetons=13dt / 15 jetons=19dt / 20 jetons=25dt /
                                            25 jetons=30dt)
      
                                            - Une fois l’enchère commencée, un compte à rebours de 10 minutes sera affiché. Les dernières 10 secondes du compte à rebours seront automatiquement renouvelées à chaque nouvelle mise de 100 ou 200 milimes.
      
                                            - Celui qui mise durant ces dernières 20 secondes, sans avoir aucune autre nouvelle mise par les autres participants, remportera l’enchère !
      
                                            - Quand vous remportez l’enchère, le paiement de la somme du produit sera effectué en espèces, par chèques ou par transactions bancaire selon votre convenance.
      
                                        Un service novateur et original qui apporte une nouvelle façon d’appréhender l’achat sur internet en toute sécurité. Bien sûr, il n’y a pas de magie derrière tout ça : le financement des produits est assuré par le prix d’entrée dans les salles et par les Jetons Zid.
      
                                        Pour en savoir plus, rendez-vous sur le site officiel de Zid.tn, notre page Facebook ou notre page Instagram.
                                        """,
                                  style: GoogleFonts.roboto(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
