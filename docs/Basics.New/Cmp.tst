Title:
 TestName: Проверка правильности "сравнения выражений";
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  Вычисляется выражение 1<2
  Оценка за вопрос должна быть равна 1
EndText;
Ask;

if 1<2 then Q1:=1;

Question: 2;
Weight: 1.0;
BeginText:
  Вычисляется выражение 2<=2
  Оценка за вопрос должна быть равна 1
EndText;
Ask;

if 2<=2 then Q2:=1;

TotalResult:=Q1+Q2;

EndTest.
