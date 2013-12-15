Title:
 TestName: Проверка примитива Goto;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  Тест намеренно зациклен следующим образом первый вопрос, второй вопрос. 
Чтобы остановиться выберите пункт меню Файл/закрыть тест.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: правильно endcase;
2: ошибка endcase;
Right: 1;
Ask;
goto 2;

Question: 2;
Weight: 1.0;
BeginText:
  Вопрос 2
  Тест намеренно зациклен следующим образом первый вопрос, второй вопрос. 
Чтобы остановиться выберите пункт меню Файл/закрыть тест.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: правильно endcase;
2: ошибка endcase;
Right: 1;
Ask;
goto 1;

Question: 3;
Weight: 1.0;
BeginText:
  Вопрос 3.
  При правильной работе системы Вы этот вопрос никогда не увидите
  Тест намеренно зациклен следующим образом первый вопрос, второй вопрос. 
Чтобы остановиться выберите пункт меню Файл/закрыть тест.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: правильно endcase;
2: ошибка endcase;
Right: 1;
Ask;

EndTest.