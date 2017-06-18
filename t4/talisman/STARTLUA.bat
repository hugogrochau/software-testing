REM Inicia as variáveis ambiente
REM para compilar e executar Lua
if ""=="%LUA%" goto inicia
goto sai
:inicia
set LUA="set"
set path=%path%;c:\Program files\lua
:sai