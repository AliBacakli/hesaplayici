import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
      ),

      home:NavigasyonSayfasi(),
    );
  }
}

class NavigasyonSayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("HESAPLAYICI"),
      ),

      body: OrtaEkran(),

      drawer: Drawer(
        child: ListView(


          children: <Widget>[

            UserAccountsDrawerHeader(
              accountName: Text("Ali BACAKLI"),
              accountEmail: Text("223311120@ogr.selcuk.edu.tr"),
              currentAccountPicture:CircleAvatar(
                backgroundImage:AssetImage("images/profil.png") ,
              ),


            ),

            ListTile(
              title: Text("Anasayfa"),
              leading: Icon(Icons.home),
              onTap: () {

                Navigator.pop(context);
             },
            ),
            ListTile(
              title: Text("Profilim"),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              leading: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ) ,

    );
  }
}

class OrtaEkran extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return _OrtaEkran(context);
  }
  
}

Widget _OrtaEkran (BuildContext context)
{
  num s1=0,s2=0,sonuc=0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController tsonuc = TextEditingController();

  final ilksayitxt=TextField(
    controller: t1,
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "1. Sayıyı Giriniz.",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final ikincisayitxt=TextField(
    controller: t2,
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "2. Sayıyı Giriniz",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final Sonuctxt=TextField(
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "$sonuc",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final ToplaButton=Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.brown[300],
    child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: (){

        },
        child: Text("Topla",textAlign: TextAlign.center,
          style: TextStyle(color:Colors.white, fontStyle: FontStyle.normal),)
    ),
  );


  final CikartButton=Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.brown[300],
    child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: (){

        },
        child: Text("Çıkar",textAlign: TextAlign.center,
          style: TextStyle(color:Colors.white, fontStyle: FontStyle.normal),)
    ),
  );

    sayitopla(){
      s1=num.parse(t1.text);
      s2=num.parse(t2.text);
      sonuc=s1+s2;
      tsonuc=sonuc as TextEditingController;
    }

    sayicikart(){
      s1=num.parse(t1.text);
      s2=num.parse(t2.text);
      sonuc=s1+s2;
    }

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/hesaplamalogo.jpg"),

            SizedBox(height: 10.0),
            ilksayitxt,
            SizedBox(height: 10.0),
            ikincisayitxt,
            SizedBox(height: 10.0),
            ToplaButton,
            SizedBox(height: 10.0),
            CikartButton,
            SizedBox(height: 10.0),
            Sonuctxt,

          ],
        ),
      ),
    ),
  );
}

