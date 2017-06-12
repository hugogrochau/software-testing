REM  gerar zip de distribucao do arcabouce de teste Talisman

cls
rmdir \lixo /s /q
md \lixo

cd   \talisman\test\batches
call cleanall
cd   \talisman\reposit\batches
call cleanall

cd \talisman\tools\batches
xcopy \talisman \lixo /S /EXCLUDE:DistributionExcludelist.parm 

cd \lixo\reposit
md \lixo\reposit\scratch

cd \lixo
md \lixo\Documents

copy \talisman\test\docs\*.pdf \lixo\Documents

cd \lixo
pkzipc Talisman_1_00  -add=up -path=rel -rec
copy   Talisman_1_00.zip \talisman

cd  \talisman\tools\batches
