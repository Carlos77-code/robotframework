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


# Fechar o navegador
#     Close Browser

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

Preencher os campos no formulário "${REGISTRAR_USUARIO_NOVO}"
        Input Text        locator=ap_customer_name      text=Shemu'el
        Input Text        locator=ap_email              text=shemuel1@gmail.com
        Input Password    locator=ap_password           password=12345678
        Input Password    locator=ap_password_check     password=12345678
        Click Button      locator=continue
Confirmando os "dados preenchidos" no cadastro realizado
        Click Button    locator=continue

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
        Input Text    locator=twotabsearchtextbox    text=${PRODUTO}        
        
Clicar no botão de pesquisa
        Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]
    

Fechar o navegador
        Capture Page Screenshot
        Close Browser
