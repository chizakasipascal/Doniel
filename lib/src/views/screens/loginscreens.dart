import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../views.dart';

class LoginScreens extends StatelessWidget {
  LoginScreens({Key? key}) : super(key: key);

  final GlobalKey<FormState> _keyForm = GlobalKey();
  final GlobalKey<State> _keyLoader =
      GlobalKey<State>(debugLabel: "loading  user");

  final TextEditingController _telephone = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Stack(
      children: [
        const BuildBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldCustomer(
                hint: "Nom & Prénom", //l10n!.nom,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: Placeholder(),
                  ),
                ),
              ),
              TextFieldCustomer(
                hint: "**************",
                isPassword: true,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 15.0, bottom: 0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: Placeholder(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DonielButtom(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.page);
                },
                descriprion: "Se Connecter", //l10n.seconnecter,
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      foregroundColor: MaterialStateProperty.all(kWhiteColor),
                      overlayColor: MaterialStateProperty.all(
                        kGreyColor.withOpacity(.5),
                      ),
                    ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Mot de passe oublié?",
                    // l10n.seconnecter,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kGreyColor),
                  ),
                  Text(
                    "Changer de compte",
                    //l10n.changerdecompte,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kGreyColor),
                  )
                ],
              ),
              const SizedBox(height: 10),
              DonielButtom(
                onPressed: () {
                  debugPrint("S'inscrire");
                },
                colortextStyle: kDoniel,
                descriprion: "S'inscrire",
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      foregroundColor: MaterialStateProperty.all(kDoniel),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      overlayColor: MaterialStateProperty.all(
                        kDoniel.withOpacity(.5),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
