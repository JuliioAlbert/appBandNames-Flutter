import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bandnames/src/providers/socket_service.dart';


class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
   

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Estado del Servidor: ${socketService.serverStatus}')
          ],
        )
     ),
     floatingActionButton: FloatingActionButton(
        onPressed: () { 
            //Tarea 
            //emitir un mapa que tenga el nombre del usuario
            socketService.emit('emitir-mensaje' , {'nombre': 'flutter', 'msj': 'Hola soy el arquero'});
         },
         child: Icon(Icons.message),
         ),
         
   );
  }
}