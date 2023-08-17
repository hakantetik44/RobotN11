*** Settings ***
Library   SeleniumLibrary
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py

*** Keywords ***
N11 Anasayfaya Git
   Open Browser   ${DataN11.UrlN11}    firefox
   Maximize Browser Window
   Set Selenium Implicit Wait    10s

N11 Giris Yap
   Click Element    ${N11Locators.Girip_yap}
   Input Text    ${N11Locators.Email_yeri}     ${DataN11.EMAIL}
   Input Password   ${N11Locators.Sifre_yeri}    ${DataN11.SIFRE}
   Click Element    ${N11Locators.Login_butonu}

Ürün Arama
  Input Text     ${N11Locators.Arama_yeri}   ${DataN11.ARANACAK_KELIME}
  Click Element    ${N11Locators.Arama_Butonu}
  Title Should Be    ${DataN11.Expected_title}
  Click Element    ${N11Locators.Sepete_ekle}
  Click Element    ${N11Locators.Sepet_butonu}
