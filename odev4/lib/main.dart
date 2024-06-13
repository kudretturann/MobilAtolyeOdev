import 'package:flutter/material.dart';

void main() {
  runApp(OdevUygulama());
}

class OdevUygulama extends StatefulWidget {
  const OdevUygulama({Key? key}) : super(key: key);

  @override
  State<OdevUygulama> createState() => _IlkUygulamaState();
}


class _IlkUygulamaState extends State<OdevUygulama> {
  String inputValue = '';
  TextEditingController passController = TextEditingController();
  String text1 = '';
  bool _isSwitched = false;
  bool _showResult=false;
  double _slideValue = 0;
  var pass = '';
  String _selectedGender = "Lütfen Cinsiyet seçin!";


  @override
  Widget build(BuildContext context) {
    bool s;
    return MaterialApp(
     // debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadowColor: Colors.black,
          titleSpacing: 25,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('Kişilik Anketi',style: TextStyle(color:const Color.fromARGB(255, 201, 201, 201),fontSize: 32,fontWeight: FontWeight.w500),),
          centerTitle: true,

        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width * 3,
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(

                  onChanged: (_text1) {
                    setState(() {
                      pass = _text1;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                    hintText: 'Lütfen adınızı ve Soyadınızı giriniz.',
                    labelText: 'Ad Soyad',
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  
                 // obscureText: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Lütfen cinsiyetinizi seçiniz:'),
                  DropdownButton(
                    value: _selectedGender,
                    onChanged: (_gender) {
                      setState(() {
                        _selectedGender = _gender!;
                      });
                    },
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                          child: Text(_selectedGender), value: _selectedGender),
                      DropdownMenuItem(child: Text("Kadın"), value: 'kadın'),
                      DropdownMenuItem(child: Text("Erkek"), value: 'erkek'),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SwitchListTile(
                  value: _isSwitched,
                  onChanged: (SwitchData) {
                    setState(
                      () {
                        _isSwitched = SwitchData;
                      },
                    );
                  },
                  activeColor: Colors.deepPurple,
                  title: Text(
                    'Sigara içiyor musunuz?',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),

                  tileColor: Colors.yellowAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Visibility(
      visible: _isSwitched,
      child: Text('Günde kaç sigara içiyorsunuz?')),
),
              Visibility(
                visible: _isSwitched,
                child: Slider(
                  value: _slideValue,
                  activeColor: Colors.yellowAccent,
                  inactiveColor: Colors.black,
                  divisions: 50,
                  max: 50,
                  min: 0,
                  label: _slideValue.round().toString(),
                  onChanged: (slider) {
                    setState(() {
                      _slideValue = slider;
                    });
                  },
                ),
              ),


              SizedBox(
                height: 12,
              ),
              OutlinedButton(onPressed: (){
                setState(() {
                  _showResult=!_showResult;
                });
              }, child: Text('Bilgileri Gönder')),
              Visibility(
                visible: _showResult,
                child: Divider(
                  height: 18,
                  color: Colors.yellowAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Visibility(
                  visible:_showResult ,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        boxShadow: List.empty()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ad ve Soyad: $pass ',style: TextStyle(color:Colors.white),),
                        Text('Cinsiyetiniz: $_selectedGender',style: TextStyle(color:Colors.white),),
                        Text('Sigara içiyor musun?: ${_isSwitched ? 'Evet': 'Hayır'}',style: TextStyle(color:Colors.white),),
                        Visibility(visible:_isSwitched,
                        child: Text('Günde kaç adet sigara içiyorsun?: $_slideValue',style: TextStyle(color:Colors.white),)),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}