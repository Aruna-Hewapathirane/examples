procedure TForm1.btnRunClick(Sender: TObject);
var
  i: Integer;
begin
  memoDemo.Lines.Clear;
  memoDemo.Lines.Add('Demo: for loop');

  for i := 1 to 5 do
    memoDemo.Lines.Add('Count: ' + IntToStr(i));
end;
