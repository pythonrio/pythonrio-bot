require 'telegram/bot'
token = '239201720:AAFA16ppUfKeuwtuwr2JjriHNRgDcEipdbw'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Forca Python!")
    when '/regras'
      bot.api.send_message(chat_id: message.chat.id, text: "Nao faras Pyratarias. Temos um clube do livro, confira em link.

Nao ofenderas o Coleguinha, Nao aceitamos discriminacao de qualquer tipo.

Nao mandaras nudes, Somos pythonistas, so nos excitamos com codigo.

Nao mandaras porno, mesmo que the internet is for porn.

Nao me invocaras de 1 em 1 minuto.

Falaras do PythonRio para os coleguinhas.")
    when '/link'
      bot.api.send_message(chat_id: message.chat.id, text: "Facebook = https://www.facebook.com/pythonrio

Twitter = https://www.twitter.com/pythonrio

Telegram = https://telegram.me/joinchat/AONs_ANlfCZRoXOX0QxEzA

YouTube = https://www.youtube.com/channel/UCGl4xDZYUYGg4_aMah32yjQ

Clube do Livro = https://trello.com/invite/b/k75OyRBC/1e822b1c6b177f4cc501c39aa9a64e44/clube-do-livro-pythonrio")
    end
  end
end
