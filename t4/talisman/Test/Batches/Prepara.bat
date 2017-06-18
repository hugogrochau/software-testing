rem prepara e verifica instalação

call cleanall
call genmake tst-str
call compile tst-str
call test str 01

rem call genmake tst-xmsg
rem call compile tst-xmsg
rem call test xmsg 01

