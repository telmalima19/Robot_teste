Language: pt-BR
*** Configurações ***
Recurso    ../resource/base_portugues.resource
Recurso    ../resource/login_page_portugues.resource

Inicialização de Teste    Abrir navegador
Finalização de Teste    Fechar navegador
Modelo de Teste          Realizar cadastro como administrador

*** Casos de Teste ***      NOME     EMAIL              SENHA
Cadastro Portugues 01   Telma    telma@email.com    123456
Cadastro Portugues 02   Joses    joses@email.com    123456
Cadastro Portugues 03   João     joao@email.com     123456

*** Palavras-chave ***
Realizar cadastro como administrador
    [Argumentos]    ${nome}    ${email}    ${senha}

    Dado que o usuário está na página inicial
    Quando clicar no botão cadastrar
    E marcar cadastro como administrador
    E preencher o campo nome     ${nome}
    E preencher o campo email    ${email}
    E preencher o campo senha    ${senha}