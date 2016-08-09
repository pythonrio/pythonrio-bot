# PythonRio-Bot

Esse Readme é um pouco tutorial/como eu o criei.

O bot que está em ruby, foi criado em um linux (Fedora), por isso haverá alguns comandos de um terminal linux.

OBS.: O Token do código já foi trocado, caso necessite de realizar um update no bot, mande uma mensagem para o user do github Hi-hi-ray

------------------------------------------------------------------------------------------------------------------------------
Primeira coisa a se fazer, Baixar e Instalar o telegram-bot-ruby:

$ sudo gem install telegram-bot-ruby

OU você pode adicionar ao seu gemfile com : 

$ gem 'telegram-bot-ruby'

------------------------------------------------------------------------------------------------------------------------------
Segunda coisa a se fazer, Criar o seu bot no telegram:

No telegram, vá em procure pelo o BotFather(@BotFather)
O BotFather ele tem função de teajudar a criar um Bot.

Comece com /start
Ele mostrará inúmeras opções, mas vamos usar /newbot
Então ele perguntará o nome do seu bot, e logo depois o username dele, Lembre-se que ele necessita ter bot no username dele.

Se nada estiver sendo utilizado, seu bot estará criado, e você terá um HTTP API token.
Mas antes de utilizarmos ele, vamos dar uma caractéristicas para ele, como descrição, imagem e o about text.

Descrição:
A descrição é a mensagem que aparece quando a pessoa vê o bot pela primeira vez, antes de inicia-lo, e pode ser dada pelo o comando /setdescription
Escreva uma descrição sobre o seu bot.

About Text:
O about text é o texto que fica no perfil do bot, você pode criar com o comando /setabouttext
Agora só escrever um about text.

Imagem:
A imagem pode ser colocada pelo o comoando /setuserpic
Ele irá solicitar uma imagem, é só enviar uma imagem. 

Todas essas configurações demoram alguns minutos ṕara ser sincronizadas, e podem ser mudadas sempre que você quiser.

------------------------------------------------------------------------------------------------------------------------------
Terceira coisa a se fazer, Decidir o que o seu bot irá fazer:

No nosso caso o bot, ele responde a partir de um comando.E suas respostas são mensagens fixas.
Parar dizemos quais são esses comandos, no telegram,em @BotFather digite o comando /setcommands
Selecione o seu bot, e depois digite o comando e o que ele faz, exemplo:

dog - diz woof
cat - diz meow

O.B.S.: cada vez que vc executa esse comando, ele apaga os comandos anteriores.

------------------------------------------------------------------------------------------------------------------------------
Quarta Coisa a se fazer, Criar um arquivo ruby (Se quiser pode colar do nosso repositorio):

A estrutura inicial é algo parecido como isso:

    require 'telegram/bot'
    token = 'seu TOKEN [Caso você não saiba seu token, o @BotFather tem um comando que mostra o token do seu bot /token]'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
          when '/dog'
            bot.api.send_message(chat_id: message.chat.id, text:"woof")
          when '/cat'
            bot.api.send_message(chat_id: message.chat.id, text:"meow")
        end
      end
    end  

O.B.S.: Se seu bot for adicionado em um grupo os seus comando são mudados, por isso você deve cobrir essa possibilidade. 
Exemplo:

No PythonRio_Bot o comando em seu chat /help funcionará muito bem, mas se ele estiver em um grupo e tiver outros bots, isso poderia causar algum conflito, por isso é adicionado automaticamente.

Então para solucionar esse problema, dentro do case basta criar when que cubra esse comando.
 então temos um 
 when '/help'
 e outro 
 when '/help@PythonRio_Bot'
 assim tornando possivel usar o seu bot em um grupo.

Salve o seu arquivo ruby.

Ultima observação... Se for usar acentos não se esqueça que usamos o padrão UTF-8, e você pode utiliza-lo em seu documento ruby antes de qualquer código basta colocar de forma comentada as seguintes três linhas abaixo:

 encoding: UTF-8
 coding: UTF-8
 -*- coding: UTF-8 -*-

------------------------------------------------------------------------------------------------------------------------------
Quinta Coisa a se fazer, rodar o seu arquivo ruby no terminal:

$ ruby arquivoRuby.rb

Agora o seu bot estará respondendo.

------------------------------------------------------------------------------------------------------------------------------
Em breve : rodando ele eternamente sem precisar deixar o seu computador ligado (Talvez Heroku)

------------------------------------------------------------------------------------------------------------------------------
Links Uteis

+ Comando que podem ser usado (no nosso bot, usamos o bot.api.send_message)
https://core.telegram.org/bots/api

+ Linguagens que pode ser feito um bot
https://core.telegram.org/bots/samples

Caso não tenha dado certo ou precise de ajuda, ou queira modificar esse bot (precisa do token) mande uma mensagem para https://github.com/hi-hi-ray

