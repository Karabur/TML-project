Title:
 TestName: �������� ������������ ������ � ����������� �����������
  � ���������� �������������� ���������;
 Difficulty: A1;
 FullTime: 0;
 Questions: 3;
EndTitle.

StartTest:

Question: 1;
Weight: 1.0;
BeginText:
  ����������� ��������� (Q1+2*Q2)*3=?
  ��� Q1,Q2,Q3 - ��������� ���������� - ��������� ������� Q1,Q2,Q3
  ���� ��������� ������ 9 ����� ����� ������ 1 � �� ����� 3
  ������ �� ����� ����� ����� ������������ ���������
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

Question: 2;
Weight: 1.0;
BeginText:
  ����������� ��������� (Q1+2*Q2)*3=?
  ��� Q1,Q2,Q3 - ��������� ���������� - ��������� ������� Q1,Q2,Q3
  ���� ��������� ������ 9 ����� ����� ������ 1 � �� ����� 3
  ������ �� ����� ����� ����� ������������ ���������
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

R1:=(Q1+2*Q2)*3; 
if R1<9 then goto 1;

Question: 3;
Weight: 1.0;
BeginText:
 �������� ��������� ���������
EndText;
Choice:
AtX: 8;
AtY: 8;
Width: 1;
Height: 1;
1: ��������� endcase;
2: ������ endcase;
Right: 1;
Ask;

TFullResult:=R1;

EndTest.
