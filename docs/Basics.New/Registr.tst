Title:
 TestName: Проверка команды Registration: ON;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
 Registration: OFF;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  (только для полнофункиональной FLTS)
  В этом тесте проверяеться работа команды Registration: OFF
  Команда отключает фиксацию результатов в базе данных. 
  Необходима для тренировочных тестов. Результат этого теста 
  не должен быть зарегистрирован в базе данных.
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

EndTest.