import 'dart:async';
import 'dart:developer';
import 'dart:math';

import 'package:access_contacts/access_contacts.dart';
import 'package:flutter/material.dart';
import 'package:shawarma_master/varibles/double.dart';
import 'package:shawarma_master/varibles/lists.dart';
import 'package:shawarma_master/varibles/maps.dart';
import 'package:shawarma_master/varibles/strings.dart';
import 'package:shawarma_master/widgets/pages/home_page/home_page.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher_string.dart';

int currentImageIndex = Random().nextInt(4);

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image(
          image: AssetImage(imgAppLogo),
        ),
      ),
      bottom: const PreferredSize(
        preferredSize: Size(double.infinity, 30),
        child: SizedBox(
          child: Text(
            "All pictures shown are for illustration purpose only. Actual product may vary. Tastes vary among individuals.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 9,
            ),
          ),
        ),
      ),
      shadowColor: Colors.black,
      backgroundColor: Colors.black87,
      expandedHeight: 500,
      flexibleSpace: const FlexibleSpaceBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.75,
                child: ContactButton(),
              ),
            ],
          ),
        ),
        background: Stack(
          children: [
            FloatingImage(),
            ShadowMask(),
            UpwardArrow(),
            FloatingImageText(),
          ],
        ),
      ),
      // floating: true,
      // snap: true,
      pinned: true,
    );
  }
}

class ShadowMask extends StatelessWidget {
  const ShadowMask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          transform: GradientRotation(mathPi / 2),
          stops: [
            0.1,
            0.8,
            1.0,
          ],
          colors: [
            Colors.black45,
            Colors.transparent,
            Colors.black45,
          ],
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {
        // launchWhatsapp();
        addContact();
        sendWhatappMessage();
        launchUrlString("tel://9605708496");
      },
      child: const ContactButtonChildrens(),
    );
  }
}

class ContactButtonChildrens extends StatelessWidget {
  const ContactButtonChildrens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  imgCallLogo,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 25,
              height: 25,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  imgWhatsappLogo,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 25,
              height: 25,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  imgAddContactLogo,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                "9605708496",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Text(
          "Connect me for more details\n(Kerala only)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white38,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}

class FloatingImage extends StatefulWidget {
  const FloatingImage({
    super.key,
  });

  @override
  State<FloatingImage> createState() => _FloatingImageState();
}

class _FloatingImageState extends State<FloatingImage> {
  delayTimer() {
    Timer.periodic(
      const Duration(seconds: 20),
      (timer) {
        setState(() {
          currentImageIndex =
              Random().nextInt(floatingImagesAndTextsList.length);
          // Random().nextInt(5);
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            // imgFriesPoster,
            floatingImagesAndTextsList[currentImageIndex]["image"] ??
                imgFriesPoster,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class UpwardArrow extends StatelessWidget {
  const UpwardArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Transform.scale(
        alignment: Alignment.bottomCenter,
        scaleY: 0.4,
        child: const Icon(
          Icons.keyboard_double_arrow_up_rounded,
          color: Colors.white12,
          size: 100,
        ),
      ),
    );
  }
}

class FloatingImageText extends StatefulWidget {
  const FloatingImageText({
    super.key,
  });

  @override
  State<FloatingImageText> createState() => _FloatingImageTextState();
}

class _FloatingImageTextState extends State<FloatingImageText> {
  delayTimer() {
    Timer.periodic(
      const Duration(seconds: 20),
      (timer) {
        setState(() {
          currentImageIndex;
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayTimer();
  }

  @override
  Widget build(BuildContext context) {
    // delayTimer();
    return Transform.rotate(
      // origin: const Offset(-105, -5),
      origin: const Offset(180, -25),
      // angle: mathPi / -2.5,
      angle: mathPi / -14,
      child: SizedBox(
        width: 300,
        child: Text(
          // "$currentImageIndex \u0D28 ¶ ihm\u0D28b English ചിക്കനും sdm«nbpw Hcpt]mse kzmZnãam¡p¶ Xn\v AanXamb Fcnhv tNÀXX ശവായ English ചിക്കനും റൊട്ടിയും ഒരുപോലെ സ്വാദിഷ്ടമാക്കുന്ന തിന് അമിതമായ എരിവ് ചേർതത ഒരല്പം മധുരത്തോടെ വളരെ രുചികരമായ രീതിയിൽ മസാല തയ്യാറാക്കുന്നു",
          floatingImagesAndTextsList[currentImageIndex]["content"] ?? "",
          style: TextStyle(
              fontFamily:
                  mlFontFamillyList[Random().nextInt(mlFontFamillyList.length)],
              // color: Colors.yellowAccent,
              color: Colors.accents[Random().nextInt(Colors.accents.length)],
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

// delayTimer() {
//   Timer.periodic(
//     const Duration(seconds: 2),
//     (timer) {
//         currentImageIndex =
//             Random().nextInt(floatingImagesAndTextsList.length);
//     },
//   );
// }

launchWhatsapp() async {
  const url = "https://wa.me/?text=HaiHai";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch$url';
  }
}

sendWhatappMessage() async {
  var whatsappUrl =
      'https://wa.me/+919605708496?text=I am interested for talking about Shawarma and Shawaya master';
  try {
    if (await canLaunchUrlString(whatsappUrl)) {
      await launchUrlString(whatsappUrl);
    } else {
      throw 'Could not launch$whatsappUrl';
    }
  } catch (e) {
    throw 'Unable to open whatsapp\n ERROR::: $e'; //To handle error and display error message
  }
}

addContact() async {
  var addContactNumber = await AccessContacts().addNewContact();
}
