class Menu
  attr_reader :escolhas

  def initialize
    @escolhas = {
      0 => :exit,
      1 => :lista_task
    }

    @descricoes = {
      exit: "Sair",
      lista_task: "Listar Tarefas"
    }
  end

  def listagem_menu
    @escolhas.each do |key, value|
      descricao = @descricoes[value] || value.to_s
      puts "#{key.to_s.center(3, ' ')} -> #{descricao}"
    end
  end
end