Title:
 TestName: �������� ������� Protocol: ON;
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
  (������ ��� ������������������� FLTS)
  ����� ���������� ����� ������� � ������� ��������� �����
  �������� ������: ���������� ����, ������ 1, ��������� 1.00
  �������� ���������� �����.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: ��������� endcase;
2: ��������� endcase;
3: ��������� endcase;

Right: 1,2,3;
Ask;

Question: 2;
Weight: 0.5;
BeginText:
  (������ ��� ������������������� FLTS)
  ����� ���������� ����� ������� � ������� ��������� �����
  �������� ������: ���������� ����, ������ 1, ��������� 1.00
  �������� ���������� �����.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: ��������� endcase;
2: ��������� endcase;

Right: 1,2;
Ask;

Question: 3;
Weight: 0.3;
BeginText:
  (������ ��� ������������������� FLTS)
  ����� ���������� ����� ������� � ������� ��������� �����
  �������� ������: ���������� ����, ������ 1, ��������� 1.00 
  �������� ���������� �����.
EndText;

OrChoice:
AtX: 8;
AtY: 8;
Width: 100;
Height: 100;

1: ��������� endcase;
2: ��������� endcase;

Right: 1,2;
Ask;

EndTest.