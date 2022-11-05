*** Settings ***
Documentation            Aqui fica o Gerenciador de dependencia da automação


##        Libraries        ##
Library                  SeleniumLibrary



##        Keywords        ##
Resource                  ../auto/keywords/kws_cadastro.robot


##        Pages        ##
Resource                  ../auto/variables/var_cadastro.robot


##        hooks        ##
Resource                  hooks.robot

