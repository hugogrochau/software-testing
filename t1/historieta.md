# T1 Testes de Software

## Tarefa 1 - Historieta v1

>### Como usuário de smartphone quero colocar um filme ou uma figura de algum blog do Facebook em um email que estou escrevendo, para poder enviar um email com esses arquivos

#### Dicionário dos termos:
* **smartphone**: mini-computador móvel com capacidade de acessar a internet
* **Facebook**: plataforma de rede social
* **blog**: parte do Facebook 
* **filme**: video publicado no Facebook
* **figura**: imagem publicada no Facebook
* **email**: método de envio de mensagens e arquivos pela internet

#### Regras de negócio
* O Facebook e email estão disponíveis para uso na internet através de aplicativos no smartphone

## Tarefa 2 - Historietas v2

>### Como usuário de smartphone quero visualizar um blog no Facebook, para acessar seu conteúdo

>### Como usuário de smartphone quero colocar um filme de algum blog do Facebook em meu smartphone, para guardar esse filme

>### Como usuário de smartphone quero colocar uma figura de algum blog do Facebook em meu smartphone, para guardar esta figura

>### Como usuário de smartphone quero escrever um email em meu smartphone, para poder envia-lo

>### Como usuário de smartphone, quero anexar arquivos à um email que estou escrevendo, para poder enviar um email com esses arquivos

#### Dicionário dos termos:
* **smartphone**: mini-computador móvel com capacidade de acessar a internet
* **Facebook**: plataforma de rede social
* **blog**: parte do Facebook 
* **filme**: video publicado no Facebook
* **figura**: imagem publicada no Facebook
* **email**: método de envio de mensagens e arquivos pela internet

#### Regras de negócio
* O Facebook e email estão disponíveis para uso na internet através de aplicativos no smartphone
* O smartphone é capaz de armazenar arquivos

## Tarefa 3 - Caso de uso
|                |                                                  |
|----------------|--------------------------------------------------|
|Caso de uso     |Enviar uma imagem|
|Resumo          |O usuário salva uma imagem de um blog no Facebook e envia ela por email|
|Escopo          ||
|Ator principal  |Usuário|
|Interessados    |**Usuário** - Objetivo: Enviar uma imagem do Facebook por email|
|Invariante      |Blog no Facebook|
|Pré condição    |Estar conectado à internet, ter os aplicativos do Facebook e do email instalados, estar logado no Facebook e no email, ter espaço em disco o suficiente para salvar a imagem em questão|
|Acionamento     |Usuário decide enviar uma imagem que ele viu em algum blog no Facebook por email|
|Fluxo Principal |<ul><li>O usuário entra num blog do Facebook</li><li>Escolhe uma imagem que ele gostaria de enviar por email</li><li>Pressiona em cima da imagem</li><li>seleciona _salvar_</li><li>abre o aplicativo de email</li><li>pressiona o botão de _anexar_</li><li>o usuário seleciona o arquivo da imagem</li><li> o usuário aperta em _enviar_</li>|
|Fluxo Alternativo|<li>Evento **E1**: Não há espaço para salvar a imagem</li><ul><li>O smartphone informa o usuário que não há espaço suficiente para salvar a imagem</li></ul><li>Fim de **E1**</li><li>Evento **E2**: Não há conexão internet<ul><li>O smartphone informa o usuário que não há conexão internet</li></ul><li>Fim de **E2**</li></ul>|
|Pós condições| |
|Garantia mínima| |
|Requisitos| |
|Regras de negócio| |
|Casos de uso correlatos| |
