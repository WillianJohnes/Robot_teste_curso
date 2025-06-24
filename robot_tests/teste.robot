** Settings **
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL}  https://automationpratice.com.br/ 
${SITE_URL_GOOGLE}  https://google.com.br/ 
${USUARIO_EMAIL}  teste@teste.com
${USUARIO_SENHA}  Teste123


** Keywords **
Acessar Site da google

    Open Browser  ${SITE_URL_GOOGLE}  chrome
    Esperar Elemento 2

Acessar Site da qazando

    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento 2


Acessar esse site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
    Esperar Elemento 2

Aguardar Site carregar  
    Sleep  5s

Clicar sobre o botao de login  
    Click Element  xpath://a[@href='/login']

Preencher campo email
    Input Text  id:user  ${USUARIO_EMAIL}

Preencher campo senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

Verificar texto login realizado
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Tirar Print
    Capture Page Screenshot

Esperar Elemento    
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

** Test Cases **

Cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste1
    Acessar Site da qazando
   
    Clicar sobre o botao de login

    Preencher campo email

    Preencher campo senha

    Clicar em logar


    Verificar texto login realizado

Cenário 2: Testando robot
    [Tags]  Teste2
    Acessar Site da google
    Aguardar site carregar 
    Clicar sobre o botao de login
    Aguardar site carregar
    Preencher campo email
    Preencher campo senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

Cenário 3: Testando valor no teste
    [Tags]  Teste3
    Acessar esse site  https://automationpratice.com.br/ 
    Aguardar site carregar 
    Clicar sobre o botao de login
    Aguardar site carregar
    Preencher campo email
    Preencher campo senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

