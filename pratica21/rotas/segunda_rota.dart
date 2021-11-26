import 'package:flutter/material.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica21/components/cartao.dart';

class SegundaRota extends StatefulWidget {
  @override
  SegundaRotaState createState() => SegundaRotaState();
}

class SegundaRotaState extends State<SegundaRota> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(40),
          child: Center(
            child: Text(
              'Galeria',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Cartao(
          titulo: 'Imagem 01',
          descricao:
              'Lorem ipsum adipiscing dapibus vel posuere sed nulla, lacus ligula porta nisi pharetra id ut ultrices, ullamcorper a convallis fames rutrum ipsum. senectus tempus neque a rutrum blandit nibh integer est eleifend, auctor ut nam magna eu odio vulputate porta, cubilia leo massa curabitur odio suspendisse class netus. risus lectus sodales euismod neque potenti dictumst nam nullam congue bibendum, nec duis tortor curabitur sit varius sed nisi molestie purus vestibulum, suspendisse consectetur torquent massa egestas sociosqu porttitor torquent at. arcu curabitur proin semper sollicitudin volutpat elementum primis nisl etiam ipsum risus malesuada varius cubilia ut, ultrices etiam mattis cursus sit phasellus tellus viverra donec pharetra magna fames aliquet.',
          preco: 3.10,
          url:
              'https://images.pexels.com/photos/213795/pexels-photo-213795.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        Cartao(
          titulo: 'Imagem 02',
          descricao:
              '	Lorem ipsum adipiscing dapibus vel posuere sed nulla, lacus ligula porta nisi pharetra id ut ultrices, ullamcorper a convallis fames rutrum ipsum. senectus tempus neque a rutrum blandit nibh integer est eleifend, auctor ut nam magna eu odio vulputate porta, cubilia leo massa curabitur odio suspendisse class netus. risus lectus sodales euismod neque potenti dictumst nam nullam congue bibendum, nec duis tortor curabitur sit varius sed nisi molestie purus vestibulum, suspendisse consectetur torquent massa egestas sociosqu porttitor torquent at. arcu curabitur proin semper sollicitudin volutpat elementum primis nisl etiam ipsum risus malesuada varius cubilia ut, ultrices etiam mattis cursus sit phasellus tellus viverra donec pharetra magna fames aliquet. ',
          preco: 2.15,
          url:
              'https://images.pexels.com/photos/213791/pexels-photo-213791.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        Cartao(
          titulo: 'Imagem 03',
          descricao:
              '	Lorem ipsum adipiscing dapibus vel posuere sed nulla, lacus ligula porta nisi pharetra id ut ultrices, ullamcorper a convallis fames rutrum ipsum. senectus tempus neque a rutrum blandit nibh integer est eleifend, auctor ut nam magna eu odio vulputate porta, cubilia leo massa curabitur odio suspendisse class netus. risus lectus sodales euismod neque potenti dictumst nam nullam congue bibendum, nec duis tortor curabitur sit varius sed nisi molestie purus vestibulum, suspendisse consectetur torquent massa egestas sociosqu porttitor torquent at. arcu curabitur proin semper sollicitudin volutpat elementum primis nisl etiam ipsum risus malesuada varius cubilia ut, ultrices etiam mattis cursus sit phasellus tellus viverra donec pharetra magna fames aliquet. ',
          preco: 2.95,
          url:
              'https://images.pexels.com/photos/213797/pexels-photo-213797.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        Cartao(
          titulo: 'Imagem 04',
          descricao:
              '	Lorem ipsum adipiscing dapibus vel posuere sed nulla, lacus ligula porta nisi pharetra id ut ultrices, ullamcorper a convallis fames rutrum ipsum. senectus tempus neque a rutrum blandit nibh integer est eleifend, auctor ut nam magna eu odio vulputate porta, cubilia leo massa curabitur odio suspendisse class netus. risus lectus sodales euismod neque potenti dictumst nam nullam congue bibendum, nec duis tortor curabitur sit varius sed nisi molestie purus vestibulum, suspendisse consectetur torquent massa egestas sociosqu porttitor torquent at. arcu curabitur proin semper sollicitudin volutpat elementum primis nisl etiam ipsum risus malesuada varius cubilia ut, ultrices etiam mattis cursus sit phasellus tellus viverra donec pharetra magna fames aliquet. ',
          preco: 1.97,
          url:
              'https://images.pexels.com/photos/213798/pexels-photo-213798.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
      ],
    );
  }
}
