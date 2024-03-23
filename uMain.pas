unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, printers, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 myFont: TFont;
 F: TextFile;
 I: integer;
 myHeadFont : TFont;
begin
 myHeadFont:= TFont.Create;
 myHeadFont.Name:= 'Sukar';
 myHeadFont.Size:= 12;
 myHeadFont.Charset:= ARABIC_CHARSET;
 myFont:= TFont.Create;
 myFont.Name:= 'Courier';
 myFont.Size:= 8;
 //myFont.Pitch := fpFixed;
 Printer.PrinterIndex:= ComboBox1.ItemIndex;
 AssignPrn(F);
 Rewrite(F);
 try
 Printer.Canvas.Font:= myFont;
 for I := 0 to memo1.Lines.Count -1 do
   begin
   if I = 0 then
   Printer.Canvas.Font:= myHeadFont else   Printer.Canvas.Font:= myFont;
     Writeln(F, ' ' + Memo1.Lines[I]);
   end;
   Writeln(F, DateTimeToStr(Date));
 finally
   CloseFile(F);
   myHeadFont.Free;
   myFont.Free;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 ComboBox1.Items:= Printer.Printers;
 ComboBox1.ItemIndex:= 1;
end;

end.
