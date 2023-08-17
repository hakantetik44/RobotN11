*** Settings ***
Library   SeleniumLibrary
Resource   ../pages/N11Page.robot


*** Test Cases ***
N11 login
   N11 Anasayfaya Git
   N11 Giris Yap

Urun sepete ekleme
   Ürün Arama

