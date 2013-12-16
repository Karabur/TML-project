Title:
 TestName: Проверка примитива Scale;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText:
 При правильном функционировании системы 
 на экране находится шкала с ползунком.
 результат теста будет равен отложенной на шкале позиции.
 на шкале 10 делений
 Исходная позиция шкалы - 3
EndText;

Scale:
AtX: 8;
AtY: 8;
Width: 200;
Height: 30;
Items: 10;
Position: 3;
EndScale;
Ask;

EndTest.