	cls
	color 15
	print"��� DOS Trend - Sortierer ���";:color 7:print" written by"
	$INCLUDE"LOGO.INC"
	color 15:print
	if command$="" then goto Syntax
	fle$=command$
	print"Sortiere Eingabedatei ... ";
	dos$="sort <"+fle$+" >temp.$$$"
	shell dos$
	print"OK"
	on error goto Syntax
	print"�ffne Kanal #1 ... ";
	open "I",#1,"TEMP.$$$"
	print"OK"
	on error goto
	print"�ffne Kanal #2 ... ";
	open "O",#2,"DOSTREND.OUT"
	print"OK"
	print"Schreibe Dateikopf ... ";
	print#2,"��� DOS Trend - Sortierer ���"
	print#2,"   written by RoboCop INDUSTRIES"
	print#2,""
	print#2,""
	print#2,"Folgende Programme sind sofort verf�gbar:"
	print#2,""
	print"OK"
	print"Beginne L�schsequenz ... ";
	x=csrlin:y=pos(0)
	locate 25,1:color 10:print"������";
	line input#1,zle$
2	locate 25,1:color 12:print"������";
	print#2,zle$
1	if eof(1) then 3
	locate 25,1:color 10:print"������";
	line input#1,zle2$
	locate 25,1:color 14:print"������";
	if zle2$=zle$ then goto 1 else let zle$=zle2$:goto 2
3	locate 25,1:color 15:print"      ";
	locate x,y:print"OK"
	print"Schlie�e Kanal #1 ... ";
	close #1
	print"OK"
	print"Schlie�e Kanal #2 ... ";
	close #2
	print"OK"
	print"L�sche TEMP.$$$ Datei ... ";
	kill "temp.$$$"
	shell "echo .>temp.$$$"
	kill "temp.$$$"
	print"OK"
	print
	print"�������������������������ͻ"
	print"� Die Liste befindet sich �"
	print"�  sortiert in der Datei  �"
	print"�      DOSTREND.OUT.      �"
	print"�������������������������ͼ"
	print
	print"Programm beendet."
	goto Ende

Syntax:
	print
	print"Syntax: DOSTREND <Eingabedatei>"
	print
	print"Eingabedatei - Datei mit dem Inhalt der DOS Trend CDs"
	print
	goto Ende

Ende:
