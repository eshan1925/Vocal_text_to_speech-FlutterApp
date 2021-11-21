// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:translator/translator.dart';

void main() {
  runApp(TheApp());
}

// ignore: use_key_in_widget_constructors
class TheApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Text To Speech',
      theme: ThemeData.dark(),
      // ignore: prefer_const_constructors
      home: MaterialApp(
        debugShowCheckedModeBanner: true,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text("Vocal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,letterSpacing: 3),),
          ),
          body: MyApp(),
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final translator = GoogleTranslator();
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    Future _speakEnglish(String text) async {
      await flutterTts.setLanguage("en-IN");
      // ignore: avoid_print
      await flutterTts.speak(text);
      // ignore: avoid_print
    }

    Future _speakHindi(String text) async {
      await flutterTts.setLanguage("hi-IN");
      // ignore: avoid_print
      var ctext;
      ctext = await translator.translate(text, to: 'hi');
      String finaltext = ctext.toString();
      // ignore: avoid_print
      await flutterTts.speak(finaltext);
      // ignore: avoid_print
    }

    Future _speakFrench(String text) async {
      await flutterTts.setLanguage("fr-FR");
      // ignore: avoid_print
      var ctext;
      ctext = await translator.translate(text, to: 'fr');
      String finaltext = ctext.toString();
      // ignore: avoid_print
      await flutterTts.speak(finaltext);
      // ignore: avoid_print
    }

    Future _speakRussian(String text) async {
      await flutterTts.setLanguage("ru-RU");
      // ignore: avoid_print
      var ctext;
      ctext = await translator.translate(text, to: 'ru');
      String finaltext = ctext.toString();
      // ignore: avoid_print
      await flutterTts.speak(finaltext);
      // ignore: avoid_print
    }

    Future _speakKorean(String text) async {
      await flutterTts.setLanguage("ko-KR");
      // ignore: avoid_print
      var ctext;
      ctext = await translator.translate(text, to: 'ko');
      String finaltext = ctext.toString();
      // ignore: avoid_print
      await flutterTts.speak(finaltext);
      // ignore: avoid_print
    }

    Future _speakJapanese(String text) async {
      await flutterTts.setLanguage("ja-JP");
      // ignore: avoid_print
      var ctext;
      ctext = await translator.translate(text, to: 'ja');
      String finaltext = ctext.toString();
      // ignore: avoid_print
      await flutterTts.speak(finaltext);
      // ignore: avoid_print
    }

    return Container(
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        // ignore: unnecessary_new, prefer_const_constructors
        gradient: new LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
          colors: [Colors.black, Colors.deepPurple, Colors.black],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 20),
            child: TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              controller: textEditingController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Press to say in English",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakEnglish(textEditingController.text),
                  style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  child: const Text("Press to say in Hindi",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakHindi(textEditingController.text),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Press to say in French",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakFrench(textEditingController.text),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  child: const Text("Press to say in Korean",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakKorean(textEditingController.text),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Press to say in Japanese",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakJapanese(textEditingController.text),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  child: const Text("Press to say in Russian",style: TextStyle(color: Colors.black),),
                  onPressed: () => _speakRussian(textEditingController.text),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const EmojiButton(emoji: '🤟', emojiText: 'I love you'),
                    const EmojiButton(emoji: '👎', emojiText: 'No'),
                    const EmojiButton(emoji: '👍', emojiText: 'Yes'),
                    const EmojiButton(emoji: '✌️', emojiText: 'Thank you'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const EmojiButton(
                        emoji: '👉', emojiText: 'Hey,how are you?'),
                    const EmojiButton(emoji: '👈', emojiText: 'I am fine'),
                    const EmojiButton(emoji: '👆', emojiText: 'Good Morning'),
                    const EmojiButton(emoji: '🖐️', emojiText: 'Hello'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const EmojiButton(emoji: '✊', emojiText: 'Bye'),
                    const EmojiButton(emoji: '👌', emojiText: 'Excellent'),
                    const EmojiButton(emoji: '👏', emojiText: 'Clapping'),
                    const EmojiButton(emoji: '🙏', emojiText: 'Namaste'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const EmojiButton(emoji: '1', emojiText: 'One'),
                    const EmojiButton(emoji: '2', emojiText: 'Two'),
                    const EmojiButton(emoji: '3', emojiText: 'Three'),
                    const EmojiButton(emoji: '4', emojiText: 'Four'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String emoji, emojiText;
  const EmojiButton({Key? key, required this.emoji, required this.emojiText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlutterTts flutterTts = FlutterTts();
    // ignore: unused_element
    Future _speakEmoji(String text) async {
      await flutterTts.setLanguage("en-IN");
      await flutterTts.setPitch(1);
      // ignore: avoid_print
      await flutterTts.speak(text);
      // ignore: avoid_print
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 25),
        ),
        onPressed: () => _speakEmoji(emojiText),
        style: ElevatedButton.styleFrom(
            primary: Colors.white12,
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
      ),
    );
  }
}
