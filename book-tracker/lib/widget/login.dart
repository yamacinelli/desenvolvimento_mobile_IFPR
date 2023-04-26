import 'package:aula/constant/constants.dart';
import 'package:aula/widget/gradientBookTracker.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginStateful();
  }
}

class LoginStateful extends StatefulWidget {
  const LoginStateful({super.key});

  @override
  State<LoginStateful> createState() => LoginState();
}

class LoginState extends State<LoginStateful> {
  bool hidePassword = true;

  void changeObscurePassword() {
    setState(() {
      hidePassword = hidePassword ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Entrar em BookWing',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Insira os detalhes da conta abaixo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(fontSize: 13),
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: const TextStyle(fontSize: 13),
                  suffixIcon: IconButton(
                    icon: hidePassword
                        ? const Icon(Ionicons.eye_outline)
                        : const Icon(Ionicons.eye_off_outline),
                    iconSize: 18,
                    onPressed: () {
                      changeObscurePassword();
                    },
                  ),
                  border: const UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Constants.ROUTE_HOME);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  fixedSize: const Size.fromWidth(300),
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  // TODO - Page ForgotPassword
                },
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Não possui conta?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    decoration: gradientBookTracker(
                        startColor: Theme.of(context).colorScheme.secondary,
                        endColor: Colors.deepPurpleAccent,
                        startPosition: Alignment.topLeft,
                        endPosition: Alignment.bottomRight),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO - Page CreateAccount
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      fixedSize: const Size.fromWidth(100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text(
                      'Criar',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
