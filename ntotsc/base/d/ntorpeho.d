BEGIN ~NTORPEHO~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~NTSATOS~ 6
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NTBRENTA~ 1
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~NTBRENTA~ 3
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXTERN ~NTHASTEN~ 5
END

IF ~~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTMustKillOrpeho","GLOBAL",1)
Enemy()
ActionOverride("NTBRENTA",Attack("NTORPEHO"))
Attack("NTBRENTA")~ EXIT
END


IF WEIGHT #1 ~Dead("NTKROTAN")~ THEN BEGIN 7
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NT_OrpehoLeaves","MYAREA",1) EscapeArea()
~ EXIT
END
