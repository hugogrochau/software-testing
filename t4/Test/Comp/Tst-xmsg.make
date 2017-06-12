##################################################
###
### Diretivas de MAKE para o construto: Tst-xmsg
### Gerado a partir de: tst-xmsg.comp
###
### ----- Arquivo gerado, NÃO EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = Tst-xmsg


### Nomes de paths

Ptable               = ..\tables
Pinc                 = ..\tables;..\..\Global\Consts
Phpp                 = ..\sources
Pferram              = ..\..\tools\programs
Pobj                 = ..\Obj
Perr                 = ..\sources
PDEFAULT             = ..\sources
Pmakeup              = ..\tables
Pstr                 = ..\tables
Pcpp                 = ..\sources

### Nomes de diretórios para geração

Ftable               = ..\tables
Finc                 = ..\tables
Fhpp                 = ..\sources
Fferram              = ..\..\tools\programs
Fobj                 = ..\Obj
Ferr                 = ..\sources
FDEFAULT             = ..\sources
Fmakeup              = ..\tables
Fstr                 = ..\tables
Fcpp                 = ..\sources

### Macros da plataforma


O       = /Gs /D_CRT_SECURE_NO_DEPRECATE
OD      = /Gs /Zi /Od /D_CRT_SECURE_NO_DEPRECATE
L       =
LD      = /DEBUG /DEBUGTYPE:CV

CDB     = /D_DEBUG

OPT     = /c /J /W4 /EHa /GA /GF /GR /Zp /nologo

!IFDEF PRD
O       = /Ox  /D_CRT_SECURE_NO_DEPRECATE
CDB     =
!ENDIF

INCLUDE     = $(INCLUDE);$(Pinc)


SPECTEST    = dummy_test





### Macros do construto posteriores à plataforma

SPECTEST    = tst_xmsg


### Regras de geração

all : limpa \
   $(Finc)\str_bcd.inc   $(Finc)\str_cnt.inc   $(Finc)\str_dis.inc \
   $(Finc)\str_dsp.inc   $(Finc)\str_env.inc   $(Finc)\str_exc.inc \
   $(Finc)\str_glb.inc   $(Finc)\str_global.inc   $(Finc)\str_log.inc \
   $(Finc)\str_msg.inc   $(Finc)\str_sio.inc   $(Finc)\str_sls.inc \
   $(Finc)\str_smt.inc   $(Finc)\str_str.inc   $(Finc)\str_tim.inc \
   $(Finc)\str_tmsg.inc   $(Finc)\str_tst.inc   $(Finc)\str_ver.inc \
   $(Ftable)\string.table   $(Fobj)\main.obj   $(Fobj)\breakpnt.obj \
   $(Fobj)\string.obj   $(Fobj)\xmessage.obj   $(Fobj)\xmsgbcd.obj \
   $(Fobj)\xmsgbin.obj   $(Fobj)\xmsgstr.obj   $(Fobj)\xmsgtime.obj \
   $(Fobj)\tst_xmsg.obj \
   Construto

### Limpar arquivos

limpa :
   $(Fferram)\CompileBanner /c$(NOME)
   $(Fferram)\GenerateFile ..\sources\specific-test.hpp  "#include \"$(SPECTEST).hpp\""
   $(Fferram)\CompileBanner /c$(NOME)  > $(Ferr)\$(NOME).err
   SET CL=$(OPT)


### Dependências de módulos objeto a compilar

$(Finc)\str_bcd.inc :  {$(Pstr)}\str_bcd.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_cnt.inc :  {$(Pstr)}\str_cnt.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_dis.inc :  {$(Pstr)}\str_dis.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_dsp.inc :  {$(Pstr)}\str_dsp.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_env.inc :  {$(Pstr)}\str_env.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_exc.inc :  {$(Pstr)}\str_exc.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_glb.inc :  {$(Pstr)}\str_glb.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_global.inc :  {$(Pstr)}\str_global.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_log.inc :  {$(Pstr)}\str_log.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_msg.inc :  {$(Pstr)}\str_msg.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_sio.inc :  {$(Pstr)}\str_sio.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_sls.inc :  {$(Pstr)}\str_sls.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_smt.inc :  {$(Pstr)}\str_smt.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_str.inc :  {$(Pstr)}\str_str.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_tim.inc :  {$(Pstr)}\str_tim.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_tmsg.inc :  {$(Pstr)}\str_tmsg.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_tst.inc :  {$(Pstr)}\str_tst.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Finc)\str_ver.inc :  {$(Pstr)}\str_ver.str
    $(Fferram)\GENSTRID  /D$(Fstr)  /E$(Fstr)\$(@B).str /T$(Finc)\$(@B).inc >> $(Ferr)\$(NOME).err

$(Ftable)\string.table :  {$(Pmakeup)}\string.makeup \
    {$(Pstr)}str_bcd.str          {$(Pstr)}str_cfg.str          {$(Pstr)}str_cnt.str          \
    {$(Pstr)}str_dis.str          {$(Pstr)}str_dsp.str          {$(Pstr)}str_env.str          \
    {$(Pstr)}str_exc.str          {$(Pstr)}str_glb.str          {$(Pstr)}str_log.str          \
    {$(Pstr)}str_msg.str          {$(Pstr)}str_sio.str          {$(Pstr)}str_sls.str          \
    {$(Pstr)}str_smt.str          {$(Pstr)}str_str.str          {$(Pstr)}str_texc.str         \
    {$(Pstr)}str_tim.str          {$(Pstr)}str_tmsg.str         {$(Pstr)}str_tst.str          \
    {$(Pstr)}str_ver.str         
    $(Fferram)\GENSTRTB  /D$(Ftable)  /L$(Ftable)\$(@B).makeup   /T$(Ftable)\$(@B).table >> $(Ferr)\$(NOME).err

$(Fobj)\main.obj :  {$(Pcpp)}\main.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}specific-test.hpp    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}talisman_versioncontrol.inc {$(Phpp)}tst_rtst.hpp         \
    {$(Phpp)}tst_str.hpp          {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\breakpnt.obj :  {$(Pcpp)}\breakpnt.cpp \
    {$(Phpp)}breakpnt.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\string.obj :  {$(Pcpp)}\string.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_global.inc       \
    {$(Pinc)}str_str.inc          {$(Phpp)}string.hpp           {$(Ptable)}string.table         \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\xmessage.obj :  {$(Pcpp)}\xmessage.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_msg.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tracer.hpp           {$(Pinc)}typeidmessageitem.inc {$(Phpp)}xmessage.hpp         \
    {$(Phpp)}xmsgbin.hpp         
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\xmsgbcd.obj :  {$(Pcpp)}\xmsgbcd.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_msg.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc \
    {$(Phpp)}xmessage.hpp         {$(Phpp)}xmsgbcd.hpp         
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\xmsgbin.obj :  {$(Pcpp)}\xmsgbin.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Pinc)}typeidmessageitem.inc {$(Phpp)}xmessage.hpp         {$(Phpp)}xmsgbin.hpp         
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\xmsgstr.obj :  {$(Pcpp)}\xmsgstr.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_msg.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc \
    {$(Phpp)}xmessage.hpp         {$(Phpp)}xmsgstr.hpp         
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\xmsgtime.obj :  {$(Pcpp)}\xmsgtime.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}time.hpp             {$(Pinc)}typeidmessageitem.inc {$(Phpp)}xmessage.hpp         \
    {$(Phpp)}xmsgtime.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\tst_xmsg.obj :  {$(Pcpp)}\tst_xmsg.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}gnrctest.hpp         \
    {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_tmsg.inc         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tst_rtst.hpp         {$(Phpp)}tst_xmsg.hpp         {$(Pinc)}typeidmessageitem.inc \
    {$(Phpp)}xmessage.hpp         {$(Phpp)}xmsgbcd.hpp          {$(Phpp)}xmsgbin.hpp          \
    {$(Phpp)}xmsgstr.hpp          {$(Phpp)}xmsgtime.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err


### Terminação

Construto : \
   $(Fobj)\main.obj   $(Fobj)\breakpnt.obj   $(Fobj)\string.obj \
   $(Fobj)\xmessage.obj   $(Fobj)\xmsgbcd.obj   $(Fobj)\xmsgbin.obj \
   $(Fobj)\xmsgstr.obj   $(Fobj)\xmsgtime.obj   $(Fobj)\tst_xmsg.obj
   SET CL=
   CD  $(Fobj)
   LINK  $(L)  @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: Tst-xmsg
###
##################################################

