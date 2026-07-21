program dafult;

function Square(const num: Integer): Integer;
begin
    Square := num * num;
end;

begin
    Writeln('Hello world');
    Writeln(Square(2));
end.
