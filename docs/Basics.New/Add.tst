Title:
 TestName: Проверка примитива AddChoice;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
 Укажите все цвета близкие к красному.
 При правильной работе системы Ваша оценка составит 1.
EndText;

AddChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

0.4: красный endcase;
0.2: красноватый endcase;
0.4: алый endcase;
0.0: зеленый endcase;

EndChoice;
Ask;
EndTest.