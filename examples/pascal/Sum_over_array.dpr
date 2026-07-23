program Sum_over_array;

function SumOverArray(const Input: array of Integer): Integer;
var
    I: Integer;
begin
    SumOverArray := 0;

    for I := Low(Input) to High(Input) do
    begin
        inc(Result, Input[I]);
    end;
end;

begin
    Writeln(SumOverArray([1,2,3,4,5,6,7,8,9,10]));
end.
