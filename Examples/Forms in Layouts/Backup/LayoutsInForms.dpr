program LayoutsInForms;

uses
  System.StartUpCopy,
  System.SysUtils,
  FMX.Forms,
  LayoutsInForms.Mobile.View.FormMain in 'View\LayoutsInForms.Mobile.View.FormMain.pas' {FrmMain},
  LayoutsInForms.Mobile.View.Splash in 'View\LayoutsInForms.Mobile.View.Splash.pas' {FrmSplash},
  LayoutsInForms.Mobile.View.FormModel in 'View\LayoutsInForms.Mobile.View.FormModel.pas' {FrmModel},
  LayoutsInForm.Lib.SvgPath in '..\Lib\LayoutsInForm.Lib.SvgPath.pas',
  LayoutsInForms.Mobile.View.Configuration.Config in 'View\Configuration\LayoutsInForms.Mobile.View.Configuration.Config.pas' {FrmConfig},
  LayoutsInForm.Lib.Utils in '..\Lib\LayoutsInForm.Lib.Utils.pas',
  LayoutsInForms.Mobile.View.Venda.Lista in 'View\Venda\LayoutsInForms.Mobile.View.Venda.Lista.pas' {FrmVendaLista};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.CurrencyString := '0.,00';
  FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := ':';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.LongDateFormat := 'dd/mm/yyyy';
  FormatSettings.ShortTimeFormat := 'hh:nn:ss';
  FormatSettings.LongTimeFormat := 'hh:nn:ss.zzz';
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.Run;
end.
