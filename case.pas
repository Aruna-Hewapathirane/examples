procedure TForm1.btnRunClick(Sender: TObject);
var
  grade: Char;
begin
  grade := 'B';

  memoDemo.Lines.Clear;
  memoDemo.Lines.Add('Demo: case statement');

  case grade of
    'A': memoDemo.Lines.Add('Excellent!');
    'B': memoDemo.Lines.Add('Good job!');
    'C': memoDemo.Lines.Add('Fair.');
    'D': memoDemo.Lines.Add('Needs improvement.');
    'F': memoDemo.Lines.Add('Failed.');
  else
    memoDemo.Lines.Add('Invalid grade.');
  end;
end;
