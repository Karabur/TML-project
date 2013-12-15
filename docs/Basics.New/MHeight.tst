Title:
 TestName: проверка команд MainHeight, MainWidth;
 Questions: 3;
 Random: OFF;
EndTitle.

StartTest:

 MainHeight: 600;
 MainWidth: 800;

 Question: 1;
 Weight: 1;
 BeginText:
  Перед выполнением этого вопроса окно приняло размеры 600 на 800
  После выполнения этого вопроса окно формы должно принять размеры 768 на 1024 пикселов
 EndText;

 Choice:
   1: попробуй выбрать неправильный ответ ! endcase;
 Right: 1;
 Ask;

 MainHeight: 768;
 MainWidth: 1024;

 Question: 2;
 Weight: 1;
 BeginText:
  После выполнения этого вопроса окно формы должно принять размеры 400 на 550
 EndText;

Choice: 
 1: попробуй выбрать неправильный ответ ! endcase;
Right: 1;
 Ask;

MainHeight: 400;
MainWidth: 550;


Question: 3;
 Weight: 1;
 BeginText:
  После выполнения этого вопроса окно формы должно принять размеры окна не изменятся
 EndText;

Choice: 
 1: попробуй выбрать неправильный ответ ! endcase;
Right: 1;
 Ask;

EndTest.