import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String name = "Jonathan Moreno";
  String email = "stecnico@pucesd.edu.ec";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountEmail: const Text("stecnico@pucesd.edu.ec"),
          accountName: const Text("Jonathan Moreno"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                  'https://ui-avatars.com/api/?background=random&name=$name'),
            ),
          ),
          decoration: const BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          title: const Text("Rutas"),
          leading: const Icon(Icons.bus_alert),
          onTap: () {
            Navigator.of(context).pop();
            context.go('/home');
          },
        ),
        ListTile(
          title: const Text("Perfil"),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.of(context).pop();
            context.push('/profile');
          },
        ),
        const Spacer(),
        ListTile(
          title: const Text("Cerrar Sesión"),
          leading: const Icon(Icons.logout),
          onTap: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text("Saliendo..."),
                      content: const Text("¿Desea cerrar la sesión?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            //TODO Logout Logic
                            context.go('/login');
                          },
                          child: const Text("Aceptar"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancelar"),
                        )
                      ],
                    ));
          },
        ),
      ]),
    );
  }
}
