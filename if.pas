Here's a set of Lazarus/Free Pascal code snippets demonstrating if statements with every major data type — all wrapped up in clear, minimal, compilable examples that print something to the console or GUI.

✅ 1. Boolean
var
  flag: Boolean;
begin
  flag := True;
  if flag then
    ShowMessage('Boolean is True')
  else
    ShowMessage('Boolean is False');

✅ 2. Integer
var
  age: Integer;
begin
  age := 30;
  if age > 18 then
    ShowMessage('Adult')
  else
    ShowMessage('Minor');    

✅ 3. Float / Real / Double
var
  price: Double;
begin
  price := 99.99;
  if price < 100 then
    ShowMessage('Cheap')
  else
    ShowMessage('Expensive');    

✅ 4. Char
var
  letter: Char;
begin
  letter := 'A';
  if letter = 'A' then
    ShowMessage('First letter of alphabet');

✅ 5. String
var
  username: String;
begin
  username := 'admin';
  if username = 'admin' then
    ShowMessage('Welcome, admin!')
  else
    ShowMessage('Access denied');

✅ 6. Enumeration
type
  TStatus = (stOnline, stOffline, stAway);

var
  status: TStatus;
begin
  status := stOnline;
  if status = stOnline then
    ShowMessage('User is online');

✅ 7. Set
type
  TDay = (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
  TDays = set of TDay;

var
  workDays: TDays;
begin
  workDays := [Mon, Tue, Wed, Thu, Fri];

  if Sat in workDays then
    ShowMessage('Saturday is a work day')
  else
    ShowMessage('Saturday is a day off');    

✅ 8. Pointer
var
  ptr: Pointer;
begin
  ptr := nil;
  if ptr = nil then
    ShowMessage('Pointer is nil');    

✅ 9. Class / Object
var
  frm: TForm;
begin
  frm := TForm.Create(nil);
  if frm <> nil then
    ShowMessage('Form created successfully');
  frm.Free;

✅ 10. Variant
var
  data: Variant;
begin
  data := 'Test';
  if VarType(data) = varString then
    ShowMessage('It''s a string');


✅ 11. Record
type
  TPerson = record
    Name: String;
    Age: Integer;
  end;

var
  p: TPerson;
begin
  p.Name := 'Alice';
  p.Age := 25;

  if p.Age > 20 then
    ShowMessage(p.Name + ' is over 20');

✅ 12. Array (via Index)
var
  numbers: array[1..3] of Integer;
begin
  numbers[1] := 10;
  if numbers[1] = 10 then
    ShowMessage('First number is 10');

✅ 13. Dynamic Array (via Length)
var
  dynArr: array of Integer;
begin
  SetLength(dynArr, 2);
  dynArr[0] := 5;

  if dynArr[0] = 5 then
    ShowMessage('Dynamic array[0] = 5');

✅ 14. File Existence (using if for file logic)

if FileExists('data.txt') then
  ShowMessage('File exists')
else
  ShowMessage('File not found');

✅ 15. Interface

type
  IMyInterface = interface
    procedure DoSomething;
  end;

  TMyObject = class(TInterfacedObject, IMyInterface)
    procedure DoSomething;
  end;

procedure TMyObject.DoSomething;
begin
  ShowMessage('Doing something');
end;

var
  intf: IMyInterface;
begin
  intf := TMyObject.Create;
  if Assigned(intf) then
    intf.DoSomething;

🎁 Bonus: If With Multiple Conditions

var
  x, y: Integer;
begin
  x := 5;
  y := 10;
  if (x < y) and (y < 20) then
    ShowMessage('x < y < 20');
