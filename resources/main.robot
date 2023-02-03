*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary


###    Data    ###
Resource    data/geral.robot


###    Shared    ###
Resource    shared/setup_teardown.robot


###    Pages    ###
Resource    pages/home_page.robot
