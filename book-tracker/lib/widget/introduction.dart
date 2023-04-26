import 'package:aula/constant/constants.dart';
import 'package:aula/widget/appBar.dart';
import 'package:aula/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  Expanded buildTopPage(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: ClipRRect(
          child: SvgPicture.asset('lib/assets/images/Student-reading-a-book-V2.svg', width: 300),
        ),
      ),
    );
  }

  Expanded buildBottomPage(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Nunca mais perca o controle de seus livros!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Apresentando nosso novo aplicativo, projetado para ajudá-lo a rastrear e gerenciar facilmente seu progresso de leitura.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const FaIcon(FontAwesomeIcons.angleRight),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTopPage(context),
          buildBottomPage(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: buildBody(context),
    );
  }
}
