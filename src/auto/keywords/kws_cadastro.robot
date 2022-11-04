*** Settings ***
Documentation            Aqui ficam as Keywords da automação

Resource                 ../../config/package.robot


*** Keywords ***
Verificar tela da home page
    Wait Until Element Is Visible        id:nav-logo-sprites


Ir para tela de cadastro
    Click Element        locator=//span[@class='nav-line-2 '][contains(.,'Contas e Listas')]