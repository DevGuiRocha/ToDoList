require_relative 'models/menu'
require 'io/console'

class App
  attr_accessor :continua_executar

  def initialize
    @continua_executar = true
    @menu = Menu.new
  end

  def inicio
    executa
  end

  private

  def executa
    while continua_executar
      STDOUT.clear_screen
      exibe_menu
      continua_executar?
    end
  end

  def exibe_menu
    @menu.listagem_menu
  end

  def continua_executar?
    escolha_usuario = gets.chomp.to_i
    escolhas = { 0 => :exit, 1 => :lista_task }
    
    if escolhas.include?(escolha_usuario) && escolhas[escolha_usuario] == :exit
      self.continua_executar = false
    end
  end

end

App.new.inicio