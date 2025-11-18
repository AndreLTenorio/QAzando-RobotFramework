** Settings **
Library  SeleniumLibrary
Library  BuiltIn    

*** Variables ***
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_HERBERT}  https://www.google.com/
${USUARIO_EMAIL}  qazando@gmail.com
${USUARIO_SENHA}  123456
${BROWSER}      chrome

*** Keywords ***
Abrir Site Herbert
    # Correção: Usar a variável ${BROWSER} e adicionar as options
    Open Browser    ${SITE_URL_HERBERT}    ${BROWSER}    options=add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--window-size=1920,1080")

Abrir Site
    # Esta aqui já estava certa, mantenha assim!
    Open Browser    ${SITE_URL}    ${BROWSER}    options=add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--window-size=1920,1080")

Abrir esse site
    [Arguments]  ${url}
    # CORREÇÃO PRINCIPAL DO CENÁRIO 3 AQUI EMBAIXO:
    Open Browser    ${url}    ${BROWSER}    options=add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--window-size=1920,1080")

Esperar Página Carregar
    Sleep  3s

Clicar em Link de Login
    Click Element  xpath://a[@href='/login']

Preencher Campo de E-mail
    Input Text  id:user  ${USUARIO_EMAIL}

Preencher Campo de Senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em Botão de Login
    Click Element  id:btnLogin

Verificar texto login realizado
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Tirar Printscreen
    Capture Page Screenshot

*** Test Cases ***
Cenário 1: Acessando o site do Robot
    [Tags]  Teste1
    Abrir Site
    Esperar Página Carregar
    Clicar em Link de Login
    Esperar Página Carregar
    Preencher Campo de E-mail
    Tirar Printscreen
    Preencher Campo de Senha
    Tirar Printscreen
    Clicar em Botão de Login
    Tirar Printscreen
    Esperar Página Carregar
    Verificar texto login realizado

Cenário 2: Testando Robot
    [Tags]  Teste3
    Abrir Site
    Esperar Página Carregar
    Clicar em Link de Login
    Esperar Página Carregar
    Preencher Campo de E-mail
    Preencher Campo de Senha
    Clicar em Botão de Login
    Esperar Página Carregar
    Verificar texto login realizado

Cenário 3: Testando valor no teste
    [Tags]  Teste3
    Abrir esse site  https://automationpratice.com.br/  
    Esperar Página Carregar
    Clicar em Link de Login
    Esperar Página Carregar
    Preencher Campo de E-mail
    Preencher Campo de Senha
    Clicar em Botão de Login
    Esperar Página Carregar
    Verificar texto login realizado