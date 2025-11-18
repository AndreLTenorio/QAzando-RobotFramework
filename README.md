# 🤖 QAzando - Robot Framework Automation

Este repositório contém um projeto de automação de testes Web desenvolvido com **Robot Framework** e **SeleniumLibrary**. O objetivo é demonstrar cenários de testes End-to-End (E2E) no site de prática de automação *Automation Practice*.

![Robot Framework](https://img.shields.io/badge/robot%20framework-Run-blue)
![Selenium](https://img.shields.io/badge/selenium-library-green)
![Python](https://img.shields.io/badge/python-3.x-yellow)
[![Pipeline Testes Robot](https://github.com/AndreLTenorio/QAzando-RobotFramework/actions/workflows/pipeline.yml/badge.svg)](https://github.com/AndreLTenorio/QAzando-RobotFramework/actions/workflows/pipeline.yml)

## 📋 Sobre o Projeto

O projeto realiza a validação do fluxo de login na aplicação web, garantindo que o usuário consiga acessar a área logada corretamente. Ele demonstra conceitos fundamentais do Robot Framework e práticas de DevOps, incluindo:

* **CI/CD:** Execução automática de testes via GitHub Actions.
* **Page Objects:** Estrutura organizada com Keywords e Variáveis.
* **Headless Testing:** Suporte para execução em servidores sem interface gráfica.
* **Evidências:** Geração automática de logs e screenshots.

## 🛠️ Tecnologias Utilizadas

* [Python](https://www.python.org/)
* [Robot Framework](https://robotframework.org/)
* [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
* **GitHub Actions** (Pipeline de CI)

## ⚙️ Pré-requisitos (Execução Local)

Antes de começar, você precisa ter o **Python** instalado em sua máquina.

### 1. Instalação das dependências

Execute o comando abaixo no terminal para instalar as bibliotecas necessárias:

```bash
pip install robotframework robotframework-seleniumlibrary
