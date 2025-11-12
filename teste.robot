** Settings **

Library  SeleniumLibrary
Library  BuiltIn    

*** Variables ***
${SITE_URL}  https://www.automationpratice.com.br/
${SITE_URL_HERBERT}  https://www.google.com/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456

*** Keywords ***

Abrir Site Herbert
    Open Browser    ${SITE_URL_HERBERT}    chrome  # <-- Mude ${SITE_URL} para ${SITE_URL_HERBERT}

Acessar Site da qazando
    Open Browser    ${SITE_URL}    chrome          # <-- Esta já está correta

Aguardar site carregar   Sleep  3s

Clicar sobre o botao login
    Click Element  xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

** Test Cases **

Cenário 1: Acessando o site da QAZANDO
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar

Cenário 2: Testando o site do Robot
    Abrir Site Herbert           # CORRIGIDO AQUI
    Aguardar site carregar
    Clicar sobre o botao login    # CORRIGIDO AQUI
    Aguardar site carregar
    Digitar email
    Digitar senha
    Clicar sobre o botao login    # CORRIGIDO AQUI (Tinha outro erro, Clicar em logar não existe)