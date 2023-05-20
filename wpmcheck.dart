import 'dart:io';

void main() {
  var start = DateTime.now();

  stdout.write('Type the text given below:\n\n');
  var rt = random_text();
  var input = stdin.readLineSync();

  var stop = DateTime.now();

  var w = input?.split(" ");
  var time = stop.difference(start).inSeconds;

  var word = w?.length ?? 0;
  var wpm = (word / time) * 60;
  print('Your Wpm: ${wpm.round()}');
  accuracy(input,rt);
}

//a poor function that print random text line.
String random_text() {
  var list_text = [
    'the quick brown fox jump over the lazy dog',
    'traffic jam is the most common problem in Bangladesh',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'
  ];

  list_text.shuffle();
  print(list_text[0]);

  return list_text[0];
}

//another poor function that check accuracy
accuracy(var inptext, var ltext) {
  int mistakes = 0;

  int totalChars = inptext.length;

  for (int i = 0; i < totalChars; i++) {
    if (inptext[i] != ltext[i]) {
      mistakes++;
    }
  }

print('You Make Mistake: ${mistakes}');
}

