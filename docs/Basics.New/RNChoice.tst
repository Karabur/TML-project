Title:
TestName: �������� ������� RandomChoice;
Difficulty: A1;
Questions: 2;
FullTime: 0;
RandomChoice: ON;
EndTitle.


StartTest:

Question: 1;
Weight: 1;
BeginText:
� ���� ����� ������ ������� RandomChoice: ON; 
������� RandomChoice: ON; ������������ �������� ������� � ���������  ������,
���, ����� ��� �� ����������� ��� ������ ����������.
EndText;

Choice:
AtX: 8; AtY: 8; Width: 496; Height: 150;
1: ���� ������� � ������ ����� ����� ������ endcase;
2: ���� ������� � ������ ����� ����� ������  endcase;
3: ���� ������� � ������ ����� ����� �������  endcase;
4: ���� ������� � ������ ����� ����� ��������� endcase;
5: ���� ������� � ������ ����� ����� ����� endcase;

Right: 2;

Ask;

Question: 2;
Weight: 1;
BeginText:
� ���� ����� ������ ������� RandomChoice: ON; 
������� RandomChoice: ON; ������������ �������� ������� � ���������  ������,
���, ����� ��� �� ����������� ��� ������ ����������.
EndText;

MultiChoice:
AtX: 8;
AtY: 8;
Width: 496;
Height: 80;
1: ���� ������� � ������ ����� ����� ������ endcase;
2: ���� ������� � ������ ����� ����� ������  endcase;
3: ���� ������� � ������ ����� ����� �������  endcase;
Right: 2;

Ask;

EndTest.
