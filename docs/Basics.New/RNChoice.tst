Title:
TestName: Проверка команды RandomChoice;
Difficulty: A1;
Questions: 2;
FullTime: 0;
RandomChoice: ON;
EndTitle.


StartTest:

Question: 1;
Weight: 1;
BeginText:
В этом тесте отдана команда RandomChoice: ON; 
Команда RandomChoice: ON; перемешивает варианты ответов в элементах  выбора,
так, чтобы они не повторялись для разных тестиуемых.
EndText;

Choice:
AtX: 8; AtY: 8; Width: 496; Height: 150;
1: этот элемент в тексте теста стоит первым endcase;
2: этот элемент в тексте теста стоит вторым  endcase;
3: этот элемент в тексте теста стоит третьим  endcase;
4: этот элемент в тексте теста стоит четвертым endcase;
5: этот элемент в тексте теста стоит пятым endcase;

Right: 2;

Ask;

Question: 2;
Weight: 1;
BeginText:
В этом тесте отдана команда RandomChoice: ON; 
Команда RandomChoice: ON; перемешивает варианты ответов в элементах  выбора,
так, чтобы они не повторялись для разных тестиуемых.
EndText;

MultiChoice:
AtX: 8;
AtY: 8;
Width: 496;
Height: 80;
1: этот элемент в тексте теста стоит первым endcase;
2: этот элемент в тексте теста стоит вторым  endcase;
3: этот элемент в тексте теста стоит третьим  endcase;
Right: 2;

Ask;

EndTest.
