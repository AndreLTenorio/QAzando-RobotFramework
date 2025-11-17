# 🤖 QAzando - Robot Framework Automation

Este repositório contém um projeto de automação de testes Web desenvolvido com **Robot Framework** e **SeleniumLibrary**. O objetivo é demonstrar cenários de testes End-to-End (E2E) no site de prática de automação *Automation Practice*.

![Robot Framework](https://img.shields.io/badge/robot%20framework-Run-blue)
![Selenium](https://img.shields.io/badge/selenium-library-green)
![Python](https://img.shields.io/badge/python-3.x-yellow)

## 📋 Sobre o Projeto

O projeto realiza a validação do fluxo de login na aplicação web, garantindo que o usuário consiga acessar a área logada corretamente. Ele demonstra conceitos fundamentais do Robot Framework, como:

* Uso de **Keywords** personalizadas.
* Manipulação de **Variáveis**.
* Captura de **Screenshots** (evidências de teste).
* Verificação de elementos e textos (Assertions).
* Passagem de argumentos.

## 🛠️ Tecnologias Utilizadas

* [Python](https://www.python.org/)
* [Robot Framework](https://robotframework.org/)
* [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
* WebDriver (Chrome)

## ⚙️ Pré-requisitos

Antes de começar, você precisa ter o **Python** e o **Pip** instalados em sua máquina. Além disso, é necessário ter o **ChromeDriver** configurado no seu PATH ou na pasta do projeto.

### Instalação das dependências

Execute o comando abaixo no terminal para instalar as bibliotecas necessárias:

```bash
pip install robotframework robotframework-seleniumlibrary
