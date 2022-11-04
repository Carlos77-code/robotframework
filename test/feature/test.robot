*** Settings ***
Documentation                Aqui ficam os Casos de Teste da automação

Resource                     ../../src/config/package.robot

Test Setup            Abrir o navegador
Test Teardown         Fechar o navegador

*** Test Cases ***
Caso de Teste 01:
    [Tags]                         Cadastrar_Usuario
    Verificar tela da home page
    Ir para tela de cadastro