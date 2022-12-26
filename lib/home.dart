import 'package:flutter/material.dart';
import 'package:trans/global/selection.dart';
import 'package:translator/translator.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants/color_const.dart';

class TransHome extends StatefulWidget {
  const TransHome({super.key});

  @override
  State<TransHome> createState() => _TransHomeState();
}

class _TransHomeState extends State<TransHome> {
  final translator = GoogleTranslator();

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse("https://digitalraiz.com/"))) {
      throw 'Could not launch https://digitalraiz.com/';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Translator",
                style: TextStyle(
                  color: thirdColor,
                  fontFamily: 'PopM',
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Designed with ♥️ by ",
                  style: TextStyle(
                    color: thirdColor,
                    fontFamily: 'PopM',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchUrl();
                  },
                  child: Text(
                    "Digital Raiz",
                    style: TextStyle(
                        color: forthColor,
                        fontFamily: 'PopM',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          languages(),
          Expanded(
            child: translatingArea(),
          ),
        ],
      ),
    );
  }

  languages() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 1, // blur radius
              offset: Offset(0, 1), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 1, // blur radius
              offset: Offset(1, 0), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.language_outlined,
                  color: thirdColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Languages",
                  style: TextStyle(
                    color: forthColor,
                    fontFamily: 'PopS',
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 7.5,
            ),
            Divider(),
            SizedBox(
              height: 7.5,
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "1";
                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "1" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "1" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Hindi",
                                style: TextStyle(
                                  color: languageSe == "1" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "2";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "2" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "2" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Malayalam",
                                style: TextStyle(
                                  color: languageSe == "2" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "3";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "3" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "3" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Gujarati",
                                style: TextStyle(
                                  color: languageSe == "3" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "4";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "4" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "4" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Marathi",
                                style: TextStyle(
                                  color: languageSe == "4" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "5";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "5" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "5" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Tamil",
                                style: TextStyle(
                                  color: languageSe == "5" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "6";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "6" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "6" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Kannada",
                                style: TextStyle(
                                  color: languageSe == "6" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "7";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "7" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "7" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Punjabi",
                                style: TextStyle(
                                  color: languageSe == "7" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "8";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "8" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "8" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bengali",
                                style: TextStyle(
                                  color: languageSe == "8" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "9";

                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "9" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "9" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sanskrit",
                                style: TextStyle(
                                  color: languageSe == "9" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "10";
                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "10" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "10" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Assamese",
                                style: TextStyle(
                                  color:
                                      languageSe == "10" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        languageSe = "11";
                        translated = "";
                        initialWord.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: languageSe != "11" ? white : forthColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: languageSe == "11" ? white : thirdColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sinhalese",
                                style: TextStyle(
                                  color:
                                      languageSe == "11" ? white : forthColor,
                                  fontFamily: 'PopM',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  translatingArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 1, // blur radius
              offset: Offset(0, 1), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 1, // blur radius
              offset: Offset(1, 0), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: forthColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                            color: white,
                            fontFamily: 'PopM',
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.change_circle_outlined,
                          color: thirdColor,
                        ),
                        Text(
                          languageSe == "1"
                              ? "Hindi"
                              : languageSe == "2"
                                  ? "Malayalam"
                                  : languageSe == "3"
                                      ? "Gujarati"
                                      : languageSe == "4"
                                          ? "Marathi"
                                          : languageSe == "5"
                                              ? "Tamil"
                                              : languageSe == "6"
                                                  ? "Kannada"
                                                  : languageSe == "7"
                                                      ? "Punjabi"
                                                      : languageSe == "8"
                                                          ? "Bengali"
                                                          : languageSe == "9"
                                                              ? "Sanskrit"
                                                              : languageSe ==
                                                                      "10"
                                                                  ? "Assamese"
                                                                  : "Sinhalese",
                          style: TextStyle(
                            color: white,
                            fontFamily: 'PopM',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: Offset(0, 1), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: Offset(1, 0), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      enabled: true,
                      controller: initialWord,
                      maxLines: null,
                      autofillHints: const [AutofillHints.email],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: "PopM",
                        letterSpacing: 1.0,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Enter Text Here",
                        hintStyle: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.grey.withOpacity(0.8),
                            fontFamily: "PopR",
                            fontSize: 15),
                      ),
                      onChanged: (val) {
                        languageSe == "1"
                            ? translator
                                .translate(val, from: 'auto', to: 'hi')
                                .then((value) {
                                setState(() {
                                  translated = value.toString();
                                });
                              })
                            : languageSe == "2"
                                ? translator
                                    .translate(val, from: 'auto', to: 'ml')
                                    .then((value) {
                                    setState(() {
                                      translated = value.toString();
                                    });
                                  })
                                : languageSe == "3"
                                    ? translator
                                        .translate(val, from: 'auto', to: 'gu')
                                        .then((value) {
                                        setState(() {
                                          translated = value.toString();
                                        });
                                      })
                                    : languageSe == "4"
                                        ? translator
                                            .translate(val,
                                                from: 'auto', to: 'mr')
                                            .then((value) {
                                            setState(() {
                                              translated = value.toString();
                                            });
                                          })
                                        : languageSe == "5"
                                            ? translator
                                                .translate(val,
                                                    from: 'auto', to: 'ta')
                                                .then((value) {
                                                setState(() {
                                                  translated = value.toString();
                                                });
                                              })
                                            : languageSe == "6"
                                                ? translator
                                                    .translate(val,
                                                        from: 'auto', to: 'kn')
                                                    .then((value) {
                                                    setState(() {
                                                      translated =
                                                          value.toString();
                                                    });
                                                  })
                                                : languageSe == "7"
                                                    ? translator
                                                        .translate(val,
                                                            from: 'auto',
                                                            to: 'pa')
                                                        .then((value) {
                                                        setState(() {
                                                          translated =
                                                              value.toString();
                                                        });
                                                      })
                                                    : languageSe == "8"
                                                        ? translator
                                                            .translate(val,
                                                                from: 'auto',
                                                                to: 'bn')
                                                            .then((value) {
                                                            setState(() {
                                                              translated = value
                                                                  .toString();
                                                            });
                                                          })
                                                        //Sanskrit language code is 'sa' is hindi for now
                                                        : languageSe == "9"
                                                            ? translator
                                                                .translate(val,
                                                                    from:
                                                                        'auto',
                                                                    to: 'hi')
                                                                .then((value) {
                                                                setState(() {
                                                                  translated = value
                                                                      .toString();
                                                                });
                                                              })
                                                            //Assami language code is 'as' is hindi for now
                                                            : languageSe == "10"
                                                                ? translator
                                                                    .translate(val, from: 'auto', to: 'hi')
                                                                    .then((value) {
                                                                    setState(
                                                                        () {
                                                                      translated =
                                                                          value
                                                                              .toString();
                                                                    });
                                                                  })
                                                                : translator.translate(val, from: 'auto', to: 'si').then((value) {
                                                                    setState(
                                                                        () {
                                                                      translated =
                                                                          value
                                                                              .toString();
                                                                    });
                                                                  });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: Offset(0, 1), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: Offset(1, 0), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: initialWord.text == "" || translated == ""
                      ? Center(
                          child: Text(
                            "Your Transated Text will appear here! 😁",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.4),
                              fontFamily: "PopM",
                              letterSpacing: 1.0,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            translated,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: "PopM",
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

/*

Column(
        children: [
          TextFormField(
            maxLines: null,
            controller: initialWord,
            onChanged: (val) {
              translator.translate(val, from: 'auto', to: 'hi').then((value) {
                setState(() {
                  translated = value.toString();
                });
              });
            },
          ),
          Text(initialWord.text == '' ? "" : translated),
        ],
      ),

 */
