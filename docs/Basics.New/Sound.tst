Title:
 TestName: Проверка примитива Sound;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
 При правильной работе системы сейчас Вы услышите слышите звук.
 Внизу формы появилась кнопка воспроизведения звука (нажмите), 
 которая сработает 3 раза.
EndText;

Sound:
 path : sound.wav;
 button:3;
EndSound;
Ask;

EndTest.
