CLS:STRIG ON
1 PRINT"Joystick A"
PRINT USING"X       ###";STICK(0)
PRINT USING"Y       ###";STICK(1)
2 PRINT USING"Button A ##";STRIG(0)
PRINT USING"Button B ##";STRIG(4)
PRINT
PRINT"Joystick B"
PRINT USING"X       ###";STICK(2)
PRINT USING"Y       ###";STICK(3)
PRINT USING"Button A ##";STRIG(2)
PRINT USING"Button B ##";STRIG(6)
IF INKEY$=CHR$(27) THEN END
LOCATE 1,1:GOTO 1
