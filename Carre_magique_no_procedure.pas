program Carre_magique_no_procedure;
uses crt ;
//BUT : R‚aliser un carr‚ magique
//ENTREE : nombres
// SORTIE : Carr‚ magique

CONST
 TMAX= 5;

VAR
        middle, nb, i, j : INTEGER ;
        place: array [1..tmax,1..tmax] of INTEGER ;


BEGIN
        clrscr;
        middle:=(TMAX div 2)+1;

        nb:=1  ;
        FOR i:=1 TO TMAX DO
        BEGIN
            FOR j:=1 TO TMAX DO
            BEGIN
                place[i,j]:=0;
            end;
             writeln;
            end;
        i:=middle-1;
        j:=middle;
        place[i,j]:=nb;
        WHILE (nb<>(TMAX*TMAX)) DO
           BEGIN
               i:=i-1;
               j:=j+1;
               nb:=nb+1;
               IF i<1 THEN
               BEGIN
                   i:=TMAX;
               end;
               IF j>TMAX THEN
               BEGIN
                   j:=1;
               end;
               IF j<1 THEN
               BEGIN
                   j:=TMAX;
               end;
               WHILE place[i,j]<>0 DO
               BEGIN
               i:=i-1;
               j:=j-1;
               IF i<1 THEN
               BEGIN
                   i:=TMAX;
               end;
               IF j>TMAX THEN
               BEGIN
                   j:=1;
               end;
               IF j<1 THEN
               BEGIN
                   j:=TMAX;
               end;
           END;
               place[i,j]:=nb;
           end;

           FOR i:=1 TO tmax DO
           BEGIN
            FOR j:=1 TO tmax DO
            BEGIN
                 write ('|');
                 write (place[i,j]:2);
            end;
            write ('|');
            writeln;
         end;
    readln;
END.
