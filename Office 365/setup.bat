reg add "HKCU\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\Ecs" /v "CountryCode" /t REG_SZ /d "std::wstring|US" /f
cd /d %UserProfile%"\Desktop\MAS\Office 365"
setup.exe /configure Configuration.xml