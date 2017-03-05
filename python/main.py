# -*- coding: UTF-8 -*-

from telegram.ext import Updater, CommandHandler

def start(update):
    update.message.reply_text('Força Python!')

def evento(update):
    update.message.reply_text('Força Python!')


def regras(update):
    update.message.reply_text('Força Python!')


def help(update):
    update.message.reply_text('Força Python!')


def link(update):
    update.message.reply_text('Força Python!')


def grupy(update):
    update.message.reply_text('Força Python!')


def niteroi(update):
    update.message.reply_text('Força Python!')


def pyladies(update):
    update.message.reply_text('Força Python!')

updater = Updater('YOUR TOKEN HERE')

updater.dispatcher.add_handler(CommandHandler('start', start))
updater.dispatcher.add_handler(CommandHandler('evento', evento))
updater.dispatcher.add_handler(CommandHandler('regras', regras))
updater.dispatcher.add_handler(CommandHandler('help', help))
updater.dispatcher.add_handler(CommandHandler('link', link))
updater.dispatcher.add_handler(CommandHandler('grupy', grupy))
updater.dispatcher.add_handler(CommandHandler('niteroi', niteroi))
updater.dispatcher.add_handler(CommandHandler('pyladies', pyladies))

updater.start_polling()
updater.idle()
