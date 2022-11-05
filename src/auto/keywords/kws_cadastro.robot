*** Settings ***
Documentation            Aqui ficam as Keywords da automação

Resource                 ../../config/package.robot


*** Keywords ***
##    Caso de teste 01    ##
Verificar tela da home page
    Wait Until Element Is Visible        id:nav-logo-sprites


Ir para tela de cadastro
    Click Element        locator=//span[@class='nav-line-2 '][contains(.,'Contas e Listas')]


Clicar no botão de criar nova conta
    Wait Until Element Is Visible    locator=//h1[@class='a-spacing-small'][contains(.,'Fazer login')]
    Click Element    locator=//a[@tabindex='6'][contains(.,'Criar sua conta da Amazon')]


Validar formulário de Cadastro
    Wait Until Element Is Visible    id:ap_register_form

Preencher formulario de cadastro
    Input Text        id:ap_customer_name        text=Carlos Fernandes
    Input Text        id:ap_email                text=carlinhos_sk8al@hotmail.com
    Input Password    id:ap_password             password=951357
    Input Password    id:ap_password_check       password=951357
    Click Element     id:continue


##    Caso de teste 02    ##
Clicar no botão Continuar
    Click Element     id:continue


Validar mensagens de campos obrigatorios
    Element Should Not Be Visible    message:Insira seu nome
    Element Should Not Be Visible    message:Digite seu e-mail ou número de telefone celular
    Element Should Not Be Visible    message:Mínimo de 6 caracteres necessários