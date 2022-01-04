import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(new myApp());//La runApp()fonction prend le donné Widgetet en fait la racine de l'arbre des widgets
}
class myApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Les widgets_basiques',
      theme: new ThemeData(
        primarySwatch: Colors.red //nous permet d'avoir nos couleurs de base
      ),
      debugShowCheckedModeBanner: false,
      home: new Home()
    );throw UnimplementedError();
  }
}
class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
  return new _Home();
    throw UnimplementedError();
  }
}
class _Home extends State<Home>
{
  bool oui = false;
  @override
  Widget build(BuildContext context) {
    double largeur =  MediaQuery.of(context).size.width;
    return new Scaffold(
        appBar :new AppBar(//FAIRE LE MENU DU HAUT
        title: new Text("Salut"),
          leading: new Icon(Icons.account_circle),
          actions: <Widget>[
            Icon(Icons.access_alarm),
            Icon(Icons.golf_course),
            Icon(Icons.directions_bike)
          ],
          elevation: 10.0,//Pour augmenter la barre
          centerTitle: true,//Centrer le texte
    ),
       body: new Center(
         child: new Column(//ECRIRE UN TEXTE INSERER UNE IMAGE AU NIVEAU D'UNE COLONNE
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text('Salut les codeurs',
             style: new TextStyle(
               color:(oui)? Colors.grey[900]: Colors.green,
               fontSize: 30.0,
               fontStyle: FontStyle.italic,
             ),
             ),
             new Card(
               elevation: 10.0,
               child: Container(
                 width: MediaQuery.of(context).size.width / 1.5,
                 height: 200,
                 child: new Image.asset('images/chat.jpg',
                   fit: BoxFit.cover,
                ),
              ),
             ),
             new IconButton(onPressed: ()//DE FAIRE LE BUTONN ICON ET DE TRANSMETTRE UN MESSAGE QUAND ON CLICK AU NIVEAU DU BOUTTON
                 {
                   print('On a appuyer sur le button');
                   setState(() {//SA NOUS PERMET DE CHANGER LA VALEUR ET DIRE A TOUT LES
                     // WIDGETS QUI CONTIENT CETTE VALEUR ATTENTION ON A CHANGER DE VALEUR ET VOUS AUSSI VOUS ALLEZ FAIRE DES CHANGEMENTS
                    oui = !oui;
                   });
                 },
                 icon: new Icon(Icons.delete)),
             new FlatButton(//PERMET DE FAIRE UN BOUTTON TEXT QUI N'A PAS DE FOND
                 onPressed: BoutonAppuye,
                 child: new Text('Appuyer moi')),
             new RaisedButton(
                 onPressed: BoutonAppuye,
                  child: new Text('Je suis plud haut que toi!!'),
               color:Colors.red,
               textColor: Colors.white,
               elevation: 5.0,
             ),
             new Container(
               height: largeur/8,
               color:Colors.red,
               margin: EdgeInsets.only(left: 10.0,right: 10.0),
               child: new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[//FAIRE LES ICONES AU NIVEAU D'UNE LIGNE
                     new Icon(Icons.thumb_up,
                       color: Colors.white,
                       size: largeur/10,
                     ),
                     new Icon(Icons.thumb_down,
                       color: Colors.white,
                       size: largeur/10,
                     ),
                     new Icon(Icons.directions_bike,
                       color: Colors.white,
                       size: largeur/10,
                     ),
                     new Icon(Icons.palette,
                       color: Colors.white,
                       size: largeur/10,
                     ),
                     ],
                /* children: <Widget>[//faire des couleur au niveau de la ligne
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.yellow,
                   ),
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.indigo,
                   ),
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.blue,
                   ),
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.green,
                   ),
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.black,
                   ),
                   new Container(
                     height: largeur /8,
                     width: largeur /8,
                     color: Colors.teal,
                   )
                 ],*/
               ),
             ),
           ],
         ),
       ),
       /* body:new Container(
          color:Colors.blue,
          //height:MediaQuery.of(context).size.height / 2 ,
          //width: MediaQuery.of(context).size.width / 3,
          //margin: EdgeInsets.all(10.0),
          //VOULOIR AVOIR DES MARGES QUI SONT UNIQUEMENT SU LE HAUT ET LE BAS
          margin : EdgeInsets.only(top: 20.0,bottom: 15.0),
          child: new Center(
            /*child: new Container(
              width: 50.0,
              height:125.0,
              color: Colors.white,
            child: new Card(
              elevation: 10.0,
              color: Colors.teal,
              child: new Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 250.0,
                /*child: new Image.network('https://pixabay.com/photos/cat-christmas-tree-ornaments-1822979/',
                fit: BoxFit.cover,//Pour que l'image prend l'integralité de notre card
                ),//ajout d'image sur notre carte via internet*/
                child: new Image.asset('images/chat.jpg',
                  fit: BoxFit.cover,
                ),//pour inserer un image déjas télécharger on vient au niveau de notre
                //projet creer un dossier image venir au niveau de pubspec.yaml decommentéle asset et ecrire le chemin de l'image
              ),
            ),*/
            child: new Text(
              'Apprentissage des Widgets avec les cours de Codabee.com et j\'adore ça',
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
              maxLines:2 ,//exiger que le texte doit obligatoirement avoir 2 lignes
            ),
          ),
      ),*/
      floatingActionButton: new FloatingActionButton(//POUR LE BOUTTON PLUS
        onPressed:BoutonAppuye,
        elevation: 8.0,
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

    // TODO: implement build
    throw UnimplementedError();
  }
void BoutonAppuye()
{
  setState(() {
    oui = !oui;
  });
}
}