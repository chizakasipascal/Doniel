import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

class Paiement extends StatelessWidget {
  const Paiement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MethodPayement(size: size),
              MethodPayement(
                size: size,
                description: 'Scan',
                subdescription: 'QR Code',
                icon: Icons.qr_code_scanner_sharp,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const payementOptions(),
          const payementOptions(
            description: 'Change Payement Password',
          ),
          const payementOptions(
            description: 'Forget Payement Pasword',
          ),
        ],
      ),
    );
  }
}

class payementOptions extends StatelessWidget {
  final String description;
  final IconData icon;
  const payementOptions({
    Key? key,
    this.description = 'Real Name Authentification',
    this.icon = Icons.check_box,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 80,
        child: Material(
          color: Colors.transparent,
          child: Row(
            children: [
              const Icon(
                Icons.person,
                color: kDoniel,
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                description,
                style: themeData.textTheme.bodyText2!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Spacer(),
              Icon(
                icon,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MethodPayement extends StatelessWidget {
  final IconData icon;
  final String description, subdescription;
  const MethodPayement({
    Key? key,
    required this.size,
    this.icon = Icons.qr_code_2_sharp,
    this.description = 'Pay',
    this.subdescription = 'By QR Code',
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: size.height * .2,
        width: size.width * .4,
        child: Material(
          elevation: 2.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: description,
                      style: themeData.textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: "\n$subdescription",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
