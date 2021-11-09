var
I: integer;
S: string;
begin
S := ´´;
for I := 1 To Length(Texto) Do
begin
if (Texto[I] in [´A´..´Z´])or (Texto[I] =´ ´) or (Texto[I] =´.´) then
begin
S := S + Copy(Texto, I, 1);
end;
end;
result := S;
end;