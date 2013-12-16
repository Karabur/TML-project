Title:
TestName: Проверка примитива Edit; 
Difficulty: A1;
Questions: 2;
FullTime: 120;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText: 
 Проверка №1 - "Принципиальная работоспособность"

 Впишите в строку одну из комбинаций: 11, 22, or 33
 При любом из вариантов Ваша оценка должна составить 1.
 В противном случае 0.0
EndText;

Edit:
AtX: 8; AtY: 8; Width: 100; Height: 20;
1: 11 endcase;
2: 22 endcase;
3: 33 endcase;
EndEdit;
Ask;

Question: 2;
Weight: 1;
BeginText: 
 Проверка №2 - "Регистр букв"

 Впишите в строку слово: 'Сохранить'
 При при полном совпадении (включая регистр букв) 
 Ваша оценка должна составить 1.
 В противном случае 0.0

 Общая оценка по тесту, таким образом должна быть в пределах [0..2] 
EndText;

Edit:
AtX: 8; AtY: 8; Width: 100; Height: 20;
1: Сохранить endcase;
EndEdit;
Ask;
EndTest.