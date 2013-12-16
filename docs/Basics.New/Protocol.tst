Title:
 TestName: Проверка команды Protocol: ON;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
 Protocol: ON;
 Interval: ON;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  (только для полнофункциональной FLTS)
  После выполнения этого вопроса в таблицу протокола будет
  занесена запись: уникальный ключ, вопрос 1, результат 1.00
  Выберите правильный ответ.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: правильно endcase;
2: правильно endcase;
3: правильно endcase;

Right: 1,2,3;
Ask;

Question: 2;
Weight: 0.5;
BeginText:
  (только для полнофункциональной FLTS)
  После выполнения этого вопроса в таблицу протокола будет
  занесена запись: уникальный ключ, вопрос 1, результат 1.00
  Выберите правильный ответ.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: правильно endcase;
2: правильно endcase;

Right: 1,2;
Ask;

Question: 3;
Weight: 0.3;
BeginText:
  (только для полнофункциональной FLTS)
  После выполнения этого вопроса в таблицу протокола будет
  занесена запись: уникальный ключ, вопрос 1, результат 1.00 
  Выберите правильный ответ.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: правильно endcase;
2: правильно endcase;

Right: 1,2;
Ask;

EndTest.