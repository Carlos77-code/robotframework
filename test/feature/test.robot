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
    Clicar no botão de criar nova conta
    Validar formulário de Cadastro
    Preencher formulario de cadastro

Caso de Teste 02:
    [Tags]                         Cadastro_Invalido
    Verificar tela da home page
    Ir para tela de cadastro
    Clicar no botão de criar nova conta
    Validar formulário de Cadastro
    Clicar no botão Continuar
    Validar mensagens de campos obrigatorios