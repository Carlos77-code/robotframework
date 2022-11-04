*** Settings ***
Documentation            Aqui ficam as configurações para abrir e fechar o sistema/site

Resource                package.robot

*** Keywords ***
Abrir o navegador
    Open Browser     ${URL}        ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser