Title:
 TestName: �������� ������ MainHeight, MainWidth;
 Questions: 3;
 Random: OFF;
EndTitle.

StartTest:

 MainHeight: 600;
 MainWidth: 800;

 Question: 1;
 Weight: 1;
 BeginText:
  ����� ����������� ����� ������� ���� ������� ������� 600 �� 800
  ����� ���������� ����� ������� ���� ����� ������ ������� ������� 768 �� 1024 ��������
 EndText;

 Choice:
   1: �������� ������� ������������ ����� ! endcase;
 Right: 1;
 Ask;

 MainHeight: 768;
 MainWidth: 1024;

 Question: 2;
 Weight: 1;
 BeginText:
  ����� ���������� ����� ������� ���� ����� ������ ������� ������� 400 �� 550
 EndText;

Choice: 
 1: �������� ������� ������������ ����� ! endcase;
Right: 1;
 Ask;

MainHeight: 400;
MainWidth: 550;


Question: 3;
 Weight: 1;
 BeginText:
  ����� ���������� ����� ������� ���� ����� ������ ������� ������� ���� �� ���������
 EndText;

Choice: 
 1: �������� ������� ������������ ����� ! endcase;
Right: 1;
 Ask;

EndTest.