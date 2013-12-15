Title:
 TestName: Проверка примитива Image;
 Difficulty: A1;
 FullTime: 0;
 Questions: 2;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText:
 Сейчас на экране находится прямоугольный рисунок - окружность. 
EndText;

Image:
AtX: 8;
AtY: 8;
Width: 500;
Height: 180;
 path : image.bmp ;
EndImage;
Ask;

Question: 2;
Weight: 1;
BeginText:
 Сейчас на экране нет рисунка. 
EndText;
Choice:
AtX: 100;
AtY: 8;
Height: 100;
Width: 100;
1: ничего endcase;
Right: 1;
Ask;

EndTest.
