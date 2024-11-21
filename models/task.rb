class Task
  attr_accessor :id, :titulo, :descricao, :responsavel, :tempo_conclusao

  def initialize(**args)
    @id = args[:id]
    @titulo = args[:titulo]
    @descricao = args[:descricao]
    @responsavel = args[:responsavel]
    @tempo_conclusao = args[:tempo_conclusao]
  end
end