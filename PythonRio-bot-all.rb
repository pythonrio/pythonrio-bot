# encoding: UTF-8
# coding: UTF-8
# -*- coding: UTF-8 -*-

require 'telegram/bot'
token = '239201720:AAFA16ppUfKeuwtuwr2JjriHNRgDcEipdbw'

Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|
	case message.text
	when '/start'
		bot.api.send_message(chat_id: message.chat.id, text: "Força Python!")
	when '/start@PythonRio_Bot'
		bot.api.send_message(chat_id: message.chat.id, text: "Força Python!")		
	when '/evento'
		bot.api.send_message(chat_id: message.chat.id, text: "Prezados,
		Dia 27 de Agosto de 2016 vai rolar XII Encontro da @pythonrio. Submeta sua proposta de palestra até dia 20/08/2016 pelo speakerfight http://speakerfight.com/events/xii-encontro-python-rio/
		Ainda estamos definindo o local e, assim que soubermos, liberamos em nossa Fan Page os links para a inscrição.

		Grande abraço!
		#forcapython")

	when '/evento@PythonRio_Bot'
		bot.api.send_message(chat_id: message.chat.id, text: "Prezados,
		Dia 27 de Agosto de 2016 vai rolar XII Encontro da @pythonrio. Submeta sua proposta de palestra até dia 20/08/2016 pelo speakerfight http://speakerfight.com/events/xii-encontro-python-rio/
		Ainda estamos definindo o local e, assim que soubermos, liberamos em nossa Fan Page os links para a inscrição.

		Grande abraço!
		#forcapython")

	when '/regras'
		bot.api.send_message(chat_id: message.chat.id, text: "Não farás Pyratarias. Temos um clube do livro, confira em /link .
		Não ofenderás o Coleguinha, Não aceitamos discriminação de qualquer tipo.
		Não mandarás nudes, Somos pythonistas só nos excitamos com código.
		Nao mandarás porno, mesmo que the internet is for porn
		Não me invocarás de 1 em 1 minuto.
		Falarás do PythonRio para os coleguinhas.")

	when '/regras@PythonRio_Bot'
		bot.api.send_message(chat_id: message.chat.id, text: "Não farás Pyratarias. Temos um clube do livro, confira em link.
		Não ofenderás o Coleguinha, Não aceitamos discriminação de qualquer tipo.
		Não mandarás nudes, Somos pythonistas só nos excitamos com código.
		Nao mandarás porno, mesmo que the internet is for porn.
		Não me invocarás de 1 em 1 minuto.
		Falarás do PythonRio para os coleguinhas.")

	when '/help'
		bot.api.send_message(chat_id: message.chat.id, text: "Olá! A forma mais correta de me usar a / sem o @PythonRio_Bot:
		/start - Digo Força Python!
		/evento - Situação Atual do evento.
		/regras - Falo as regras do grupo.
		/link - Falo os links.
		/help - Digo os comandos.")
	when '/link'
		bot.api.send_message(chat_id: message.chat.id, text: "Facebook = https://www.facebook.com/pythonrio
		Twitter = https://www.twitter.com/pythonrio
		Telegram = https://telegram.me/joinchat/AONs_ANlfCZRoXOX0QxEzA
		YouTube = https://www.youtube.com/channel/UCGl4xDZYUYGg4_aMah32yjQ
		Clube do Livro = https://trello.com/invite/b/k75OyRBC/1e822b1c6b177f4cc501c39aa9a64e44/clube-do-livro-pythonrio")
	when '/help@PythonRio_Bot'
		bot.api.send_message(chat_id: message.chat.id, text: "Olá! A forma mais correta de me usar a / sem o @PythonRio_Bot:
		/start - Digo Força Python!
		/evento - Situação Atual do evento.
		/regras - Falo as regras do grupo.
		/link - Falo os links.
		/help - Digo os comandos.")
	when '/link@PythonRio_Bot'
		bot.api.send_message(chat_id: message.chat.id, text: "Facebook = https://www.facebook.com/pythonrio
		Twitter = https://www.twitter.com/pythonrio
		Telegram = https://telegram.me/joinchat/AONs_ANlfCZRoXOX0QxEzA
		YouTube = https://www.youtube.com/channel/UCGl4xDZYUYGg4_aMah32yjQ
		Clube do Livro = https://trello.com/invite/b/k75OyRBC/1e822b1c6b177f4cc501c39aa9a64e44/clube-do-livro-pythonrio")
	end
end
end
