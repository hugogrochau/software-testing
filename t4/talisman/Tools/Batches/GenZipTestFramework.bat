REM  gerar zip de distribucao do arcabouce de teste Talisman

cls
rmdir \lixo /s /q
md \lixo

cd   \talisman\test\batches
call cleanall

cd \talisman\tools\batches
xcopy \talisman \lixo /S /EXCLUDE:DistributionTestExcludelist.parm 

cd \lixo
md \lixo\Documents
copy \talisman\test\docs\*.pdf \lixo\Documents

cd \lixo
pkzipc TalismanTestFramework_v1_00  -add=up -path=rel -rec

cd  \talisman\tools\batches
