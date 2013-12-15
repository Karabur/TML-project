Title:
 TestName: < Type in smth>;
  Difficulty: < Type in >;
 FullTime: < Type in a number of seconds for the test >;
 Questions: < Type in a number of the question in the test>;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:

EndText;
Choice: AtX: 8; AtY: 8; Width: 500; Height: 450;
1:  endcase;
2:  endcase;
3:  endcase;
4:  endcase;
5:  endcase;
Right: 1; Ask;

Question: 2;
Weight: 1.0;
BeginText:

EndText;
MultiChoice: AtX: 8; AtY: 8; Width: 500; Height: 450;
1:  endcase;
2:  endcase;
3:  endcase;
4:  endcase;
5:  endcase;
Right: 1,3; Ask;

Question: 1;
Weight: 1;
BeginText:

EndText;

Image: AtX: 8; AtY: 8; Width: 500; Height: 180; path : image.bmp; EndImage;

MultiChoice: AtX: 510; AtY: 8; Width: 500; Height: 450;
1:  endcase;
2:  endcase;
3:  endcase;
4:  endcase;
5:  endcase;
Right: 1,3; Ask;

Question: 1;
Weight: 1;
BeginText: 
EndText;

Edit: AtX: 8; AtY: 8; Width: 100; Height: 20;
1:  endcase;
2:  endcase;
3:  endcase;
EndEdit; Ask;

EndTest.