Title:
 TestName: �������� ��������� Goto;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  ���� ��������� �������� ��������� ������� ������ ������, ������ ������. 
����� ������������ �������� ����� ���� ����/������� ����.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: ��������� endcase;
2: ������ endcase;
Right: 1;
Ask;
goto 2;

Question: 2;
Weight: 1.0;
BeginText:
  ������ 2
  ���� ��������� �������� ��������� ������� ������ ������, ������ ������. 
����� ������������ �������� ����� ���� ����/������� ����.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: ��������� endcase;
2: ������ endcase;
Right: 1;
Ask;
goto 1;

Question: 3;
Weight: 1.0;
BeginText:
  ������ 3.
  ��� ���������� ������ ������� �� ���� ������ ������� �� �������
  ���� ��������� �������� ��������� ������� ������ ������, ������ ������. 
����� ������������ �������� ����� ���� ����/������� ����.
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;
1: ��������� endcase;
2: ������ endcase;
Right: 1;
Ask;

EndTest.