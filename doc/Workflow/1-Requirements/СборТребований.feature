﻿# encoding: utf-8
# language: ru


Функционал: Сбор требований для разработки на 1С
	Как челочек решивший взять на себе в проекте роль системного аналитика
	Я хочу чтобы требования были сформулированы структурировано
	И хочу чтобы требования были понятны всем участникам проекта, включая заказчика

Контекст:
	Когда Существует СистемаУправленияТребованиями
	И в ней зафиксированы запросы от пользователей
	И в ней зафиксированы мои заметки


Структура сценария: Обработка требований из систем управления требованиями
	Дано Существует <СистемаУправленияТребованиями>
	Когда я получаю оповещение об <Запрос>
	Тогда я открываю обработку ".\vendors\vanessa-bdd-editor"
	И формулирую требования на языке Gherkin
	И после сохранения помещаю изменения в git c помощью <ТэгСвязи> с <Запрос>
	

 Примеры:
        | СистемаУправленияТребованиями  |   Запрос      | ТэгСвязи |
        | http://redmine.org                        |    Issue      |    #     |
        | http://jira.com                           |    Request    |    #     |
		| https://github.com                         |    Issue      |    #     |
		| https://bitbucket.com                      |    Issue      |    #     |
		