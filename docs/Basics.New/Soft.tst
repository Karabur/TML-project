Title:
 TestName: Проверка примитива SoftChoice;
 Difficulty: A1;
 FullTime: 0;
 Questions: 1;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText:
 Укажите цвет, наиболее близкаий к красному.
 При правильном функционировании системы Ваша оценка составит 1.
EndText;

SoftChoice:
AtX: 8;
AtY: 8;
Width: 500;
Height: 180;
0.1: слегка красный endcase;
0.2: красноватый endcase;
1.0: алый endcase;
0.4: с красным оттенком endcase;
EndChoice;
Ask;

EndTest.
