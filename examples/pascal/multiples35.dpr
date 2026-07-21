program multiples35;

uses
  System.SysUtils;

var
  Cnt: Integer;
  Idx: Integer;
  Total: Integer;
begin
    // If we list all the natural numbers
    //   below 10 that are multiples of 3 or 5,
    //   we get 3,5,6 and 9.
    // The sum of these multiples is 23.
    //
    // Find the sum of all the multiples of 3 or 5 below 1000.
  try
    Total := 0;
    Cnt := 0;
    Write('Multiples: 3');

    for Idx := 4 to 9999 do begin
      if (Idx mod 15 = 0) or
         (Idx mod 3 = 0) or
         (Idx mod 5 = 0) then
      begin
        Inc(Cnt);
        Total := Total + Idx;
        Write(', ', Idx);
      end;
    end;

    Writeln;
    Writeln('Totaling ',
      FormatFloat('#,###', Total), ' over ',
      FormatFloat('#,###', Cnt), ' multiples.');
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
end.
