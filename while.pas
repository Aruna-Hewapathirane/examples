procedure TForm1.btnRunClick(Sender: TObject);
var
  count: Integer;
begin
  memoDemo.Lines.Clear;
  memoDemo.Lines.Add('Demo: while loop');

  count := 1;

  while count <= 5 do
  begin
    memoDemo.Lines.Add('Count: ' + IntToStr(count));
    Inc(count);
  end;
end;
