*** Settings ***
Library    SeleniumLibrary
Library    XML


*** Variables ***
${URL}                          http://www.amazon.com.br
${MENU_ELETRONICOS}            //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}          //h1[contains(.,'Eletrônicos e Tecnologia')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[contains(@aria-label,'${NOME_CATEGORIA}')]

Acessar menu de Cadastro "${CADATRO_USUARIO}"
        Click Element    locator=createAccountSubmit

Acessar formulário de Cadastro "${CRIAR_CONTA}"
        Click Element    locator=//a[contains(.,'${CRIAR_CONTA}')]

Preencher campo "${NOME_USUARIO}" no formulário de Cadastro Criando conta na Amazon
        Input Text    locator=ap_customer_name    text=Shemu'el
        Input Text    locator=ap_email            text=shemuel@gmail.com
        Input Text    locator=ap_password         text=12345678
        Input Text    locator=ap_password_check   text=12345678

Confirmando os "dados preenchidos" no cadastro realizado
        Click Button    locator=continue

# Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
#         Input Text    locator=twotabsearchtextbox    text=${PRODUTO}        

# Clicar no botão de pesquisa
#         Click Element    locator=nav-search-submit-button


# Fechar o navegador
#         Capture Page Screenshot
#         Close Browser
