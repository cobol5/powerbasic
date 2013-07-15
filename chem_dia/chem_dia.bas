      shell"savefont >chem_dia.ft_"
      shell"loadfont <chem_dia.fnt"
      color 0,1:cls
      gosub PrintCover
      for z=1 to 75
	 a=int(rnd*15)+1
	 color a,1
	 gosub PrintChem
	 delay .03
	 a=int(rnd*15)+1
	 color a,1
	 gosub PrintDia
	 delay .03
      next z
      color 15,1:gosub PrintDia:gosub PrintChem
      play "MFO2L4T255CDGP20GGFP20FFEGDC"
      color 0,1:cls
      gosub PrintCover
      color 15,1
      locate 3,1
      print" Dieses Programm  erstellt  an Hand  der Ordnungszahl,  Periode und Hauptgruppe"
      print" die in dem Fach Chemie h�ufig verwendeten Schalen-Diagramme. Ein Schalendiagr."
      print" sieht in etwa folgenderma�en aus:"
      print
      print" �          ";:color 11:print"   Die Zahlen 1-3 sind die Schalen, Al ist der":color 15
      print" ��������� 3";:color 11:print"   Stoff (Alu), 13 ist die Ordnungszahl, die �":color 15
      print" �����8��� 2";:color 11:print"   sind die  Ionen und die  2 bzw. 8  sind die":color 15
      print" �����2��� 1";:color 11:print"   Anzahl  der � auf  der Schale,  da  nur die":color 15
      print"   ��Al";:color 11:print"        �u�erste Schale interressant ist.":color 15
      print"   ��"
      print" Auf die Schalen kann maximal nur eine bestimmte Anzahl von Ionen,"
      print" die aus der nachfolgenden Tabelle ersichtlich ist."
      print
      print" Schale:	1	2	 3	 4	 5	 6	 7"
      print" Ionen:		2	8	18	32	50	72	98"
      locate 25,49
      color 0,3:print"Bitte dr�cken Sie eine Taste...";
1     a$=inkey$:if a$="" then 1
      color 0,1
      cls
      gosub PrintCover
      color 15,1:locate 7,1
      print"    �"
      print"    ����������������������� 7"
      print"    ����������������������� 6"
      print"    ����������������������� 5"
      print"    ����������������������� 4"
      print"    ����������������������� 3"
      print"    ����������������������� 2"
      print"    ����������������������� 1"
      color 14,1
2     locate 3,2:input"Ordnungszahl      : ",ordn
      if ordn<1 or ordn>109 then 2
      gosub SearchElement
      locate 15,15:print ele$
3     locate 4,2:input"Periode           : ",peri
      if peri<1 or peri>7 then 3
4     locate 5,2:input"Gruppe (H/N+Zahl) : ",grup$
      lgr$=left$(grup$,1)
      if lgr$="H" or lgr$="h" or lgr$="N" or lgr$="n" then  else 4







      shell"loadfont <chem_dia.ft_"
      shell"ECHO Diese Datei wurde physikalisch gel�scht !!! >ZERO.DAT"
      shell"ECHO indem sie mit diesem Text �berschrieben und DANN gel�scht wurde >>ZERO.DAT"
      shell"move ZERO.DAT chem_dia.ft_ >NUL"
      shell"del chem_dia.ft_ >NUL"
      end

PrintCover:
      locate 1,1
      color 0,3:print"                 Chemie-Diagramm written by RoboCop INDUSTRIES                  "
      locate 25,1
      print" (C)1995 by RoboCop INDUSTRIES                                                  ";
      return

PrintChem:
      locate 2,1
      print"          �����������Ŀ ��Ŀ  ��Ŀ ��������Ŀ ������Ŀ        ������Ŀ"
      print"          �           � �  �  �  � �        � �      Ȼ      ��      �"
      print"          �    ������ͼ �  �  �  � �   ����ͼ �       Ȼ    ��       �"
      print"          �    �        �  �  �  � �   �      �        Ȼ  ��        �"
      print"          �    �        �  ����  � �   ���Ŀ  �         ����         �"
      print"          �    �        �        � �       �  �    ɻ          ɻ    �"
      print"          �    �        �  ��ͻ  � �   ���ͼ  �    ���        ɼ�    �"
      print"          �    �        �  �  �  � �   �      �    � ��      ɼ �    �"
      print"          �    ������Ŀ �  �  �  � �   ����Ŀ �    �  ��    ɼ  �    �"
      print"          �           � �  �  �  � �        � �    �   ��  ɼ   �    �"
      print"          �����������ͼ ��ͼ  ��ͼ ��������ͼ ����ͼ    ��ͼ    ����ͼ";
      return

PrintDia:
      locate 14,1
      print"          ����������������Ŀ  ����������Ŀ  ������������������������Ŀ"
      print"          �                �  �          �  �        ������ͻ        �"
      print"          �    �������ͻ   �  �          �  �        �      �        �"
      print"          �    �       �   �  �          �  �        �      �        �"
      print"          �    �       �   �  �          �  �        �      �        �"
      print"          �    �       �   �  �          �  �        ��������        �"
      print"          �    �       �   �  �          �  �        ������ͻ        �"
      print"          �    �       �   �  �          �  �        �      �        �"
      print"          �    ���������   �  �          �  �        �      �        �"
      print"          �                �  �          �  �        �      �        �"
      print"          ����������������ͼ  ����������ͼ  ��������ͼ      ��������ͼ";
      return

SearchElement:
5     read b,ele$,bez$,zust$,eneg,atu,s(1),s(2),s(3),s(4),s(5),s(6),s(7)
      if b=ordn then return
      if b=0 and b$="XXX" then restore
      goto 5
      data 1,H,Wasserstoff,gasf�rmig,2.1,1.008,1,0,0,0,0,0,0
      data 2,He,Helium,gasf�rmig,,4,2,0,0,0,0,0,0
      data 3,Li,Lithium,fest,1,6.94,2,1,0,0,0,0,0
      data 4,Be,Beryllium,fest,1.5,9.01,2,2,0,0,0,0,0
      data 5,B,Bor,2,10.81,2,3,0,0,0,0,0
      data 6,C,Kohlenstoff,2.5,12.01,2,4,0,0,0,0,0