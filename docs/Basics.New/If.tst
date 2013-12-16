Title:
 TestName: Проверка примитива IF;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
 Random: OFF;
 RandomChoice: OFF;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText:
  Выберите правильный ответ.
  При верном ответе будет задан вопрос 3, иначе вопрос 2.
EndText;

Choice:
AtX: 8; AtY: 8; Width: 100; Height: 100;
1: правильно endcase;
2: ошибка endcase;
Right: 1;
Ask;

R1:=Q1;
if R1=1 then goto 3;

Question: 2;
Weight: 1;
BeginText:
  Вы выбрали "неверный ответ", либо программа неправильно обработала примитив "IF"
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 5;
Height: 5;
1: -  endcase;
Right: 1;
Ask;
goto 1;

Question: 3;
Weight: 1;
BeginText:
  Сейчас, по результатом Вашего выбора будут проведены простейшие арифметические вычисления. Окончательная оценка по тесту будет задана следующим образом:

    если <выбор<2> то оценка = 2
    если <выбор>2> то оценка = 3
    если <выбор=2> то оценка = 0

EndText;
SoftChoice:
AtX: 8;AtY: 8;Width: 100;Height: 100;
1: 1 endcase;
2: 2 endcase;
3: 3 endcase;
EndChoice;
Ask;

if Q3<2 then TotalResult:=2;
if Q3>2 then TotalResult:=3;
if Q3=2 then ToTalResult:=0;

EndTest.