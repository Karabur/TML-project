Title:
TestName: �������� ��������� Edit; 
Difficulty: A1;
Questions: 2;
FullTime: 120;
EndTitle.

StartTest:

Question: 1;
Weight: 1;
BeginText: 
 �������� �1 - "�������������� �����������������"

 ������� � ������ ���� �� ����������: 11, 22, or 33
 ��� ����� �� ��������� ���� ������ ������ ��������� 1.
 � ��������� ������ 0.0
EndText;

Edit:
AtX: 8; AtY: 8; Width: 100; Height: 20;
1: 11 endcase;
2: 22 endcase;
3: 33 endcase;
EndEdit;
Ask;

Question: 2;
Weight: 1;
BeginText: 
 �������� �2 - "������� ����"

 ������� � ������ �����: '���������'
 ��� ��� ������ ���������� (������� ������� ����) 
 ���� ������ ������ ��������� 1.
 � ��������� ������ 0.0

 ����� ������ �� �����, ����� ������� ������ ���� � �������� [0..2] 
EndText;

Edit:
AtX: 8; AtY: 8; Width: 100; Height: 20;
1: ��������� endcase;
EndEdit;
Ask;
EndTest.