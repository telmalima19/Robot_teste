*** Settings ***
Resource    ../resource/page_api.resource
Resource    ../resource/variaveis_api.resource

Suite Setup    Criar Sessao Serverest

*** Test Cases ***

Cenario: Cadastrar usuario com sucesso
    Realizo o cadastro do usuario
    Valido o cadastro realizado com sucesso
    Valido o status code 201

Cenario: Consultar usuario criado
    Dado que realizo a consulta do usuario cadastrado
    Valido a consulta realizada com sucesso     
    Valido o status code 200 da consulta  

Cenario: Excluir usuario criado
    Dado que realizo a exclusao do usuario cadastrado
    Valido a exclusao realizada com sucesso
    Valido o status code 200

Cenario: Consultar usuario apos exclusão
    Dado que realizo a consulta do usuario cadastrado
    Valido a consulta realizada com sucesso     
    Valido o status code 200 da consulta apos exclusão
    Valido a consulta apos exclusão 