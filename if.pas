procedure TForm1.btnRunClick(Sender: TObject);
var
  number: Integer;
begin
  number := 10;

  memoDemo.Lines.Clear;
  memoDemo.Lines.Add('Demo: if statement');

  if number > 0 then
    memoDemo.Lines.Add('The number is positive.')
  else if number < 0 then
    memoDemo.Lines.Add('The number is negative.')
  else
    memoDemo.Lines.Add('The number is zero.');
end;
