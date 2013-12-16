Title:
 TestName: Проверка правильности работы с внутренними переменными
  и вычисленим арифметических выражений;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  Вычисляется выражение (Q1+2*Q2)*3=?
  где Q1,Q2,Q3 - служебные переменные - результат вопроса Q1,Q2,Q3
  если результат меньше 9 будет задан вопрос 1 и тд иначе 3
  Оценка по тесту будет равна вычисленному выражению
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

Question: 2;
Weight: 1.0;
BeginText:
  Вычисляется выражение (Q1+2*Q2)*3=?
  где Q1,Q2,Q3 - служебные переменные - результат вопроса Q1,Q2,Q3
  если результат меньше 9 будет задан вопрос 1 и тд иначе 3
  Оценка по тесту будет равна вычисленному выражению
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

R1:=(Q1+2*Q2)*3; 
if R1<9 then goto 1;

Question: 3;
Weight: 1.0;
BeginText:
 Проверка примитива завершена
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 1;
Height: 1;
1: правильно endcase;
2: ошибка endcase;
Right: 1;
Ask;

TFullResult:=R1;

EndTest.
