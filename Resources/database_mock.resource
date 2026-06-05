*** Keywords ***

Conectar no banco
    Log To Console    [MOCK] Conexão com banco simulada

Buscar usuário por email
    [Arguments]    ${email}

    Log To Console    [MOCK] Buscando usuário: ${email}

    IF    '${email}' == 'telma@email.com'
        RETURN    EXISTE
    ELSE
        RETURN    NAO_EXISTE
    END