Title:
TestName: Проверка примитива Order;
Difficulty: A1;
Questions: 1;
FullTime: 60;
EndTitle.

# Тест проверки примитива Order

StartTest:

Question: 1;
Weight: 1;
BeginText:
 Сейчас на экране появятся названия городов. Упорядочьте их по алфавиту.
 При правильной работе системы Ваша оценка составит 1.
EndText;

Order:
AtX: 4;
AtY: 4;
Width: 496;
Height: 120;
1: Москва endcase;
2: Ленинград endcase;
3: Новосибирск endcase;
Right: 2,1,3;

Ask;
EndTest.
