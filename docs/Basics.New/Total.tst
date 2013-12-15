Title:
 TestName: Проверка правильности работиы с внутренними переменными
  Внутренняя перменная TotalResult;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  При правильной работе системы:
  Значение внутренней переменной TotalResult сейчас будет
  установлено в выбранное Вами значение + 1
EndText;

SoftChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
0.1: 0.1 endcase;
0.2: 0.2 endcase;
0.3: 0.3 endcase;
0.4: 0.4 endcase;
0.5: 0.5 endcase;
EndChoice;
Ask;

TotalResult:=1+Q1;

EndTest.
