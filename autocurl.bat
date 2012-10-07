@:start

@echo attempt
curl %*

@if errorlevel 1 goto start

@echo succeed

@:end
