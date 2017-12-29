class RelatorioController < ApplicationController

  def index
    estalogado
  end

  def relatorio1
    estalogado
    pode(1)
  end

  def relatorio2
    estalogado
    pode(2)
  end

  def relatorio3
    estalogado
    pode(3)
  end

  def relatorio4
    estalogado
    pode(4)
  end

  def relatorio5
    estalogado
    pode(5)
  end

  def relatorio6
    estalogado
    pode(6)
  end

  def relatorio7
    estalogado
    pode(7)
  end

  def relatorio8
    estalogado
    pode(8)
  end

  def relatorio9
    estalogado
    pode(9)
  end

  def relatorio10
    estalogado
    pode(10)
  end

  def invalido
  end


  def estalogado
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
  end

  def pode(x)
      @usuariogrupo = Pessoa.select{ |u| u.id == session[:cafe] }
      @grupopermissao = GrupoPermissao.select{ |gp| gp.grupo_id == @usuariogrupo[0].grupo_id}
      if @grupopermissao.select{ |gp| gp.permissao_id == x } == []
        redirect_to relatorio_invalido_path
      end
  end

end
