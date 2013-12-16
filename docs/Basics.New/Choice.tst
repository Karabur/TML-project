Title:
TestName: Проверка примитива Choice;
Difficulty: A1;
Questions: 1;
FullTime: 60;
EndTitle.


StartTest:

Question: 1;
Weight: 1;
BeginText:
 Выберите правильный ответ.
 При правильной работе системы Ваша оценка составит 1.
EndText;

Choice:
AtX: 8;
AtY: 8;
Width: 496;
Height: 80;
1: неправильный ответ endcase;
2: правильный ответ endcase;
3: опять неправильный ответ endcase;
Right: 2;

Ask;
EndTest.
