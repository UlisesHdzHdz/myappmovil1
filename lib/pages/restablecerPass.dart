import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappmovil1/pages/restablecerPass.dart';
import 'package:myappmovil1/styles/colors/colors_views.dart';

void main() {
  runApp(const recuperPasstow());
}

class recuperPasstow extends StatelessWidget {
  const recuperPasstow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorSelect.txtBoHe,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            color: ColorSelect.paginatorNext,
            onPressed: () {
              Navigator.pop(context);
            },
          ), //IconButton
          title: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 220,
                      child: Text(
                        'Recuperar contraseña',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/splash.png',
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Center(),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 100),
                  child: const Text(
                    'Por seguridad, tu contraseña debe tener una',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 141, 126, 126),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'longitud de entre 8 y15 caracteres,usar',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 141, 126, 126),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'mayusculas, minusculas, contener por lo',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 141, 126, 126),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'menos un numero y un caracter especial',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 141, 126, 126),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
