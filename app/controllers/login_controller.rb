class LoginController < ApplicationController
  def login

  	if request.get?
  		session[:cafe] = nil
  		session[:email] = nil
        session[:grupo] = nil
  		@pessoa = Pessoa.new
  	else
  		@email =  params[:email]	
  		@senha =  params[:senha]

  		@pessoa = Pessoa.select{ |p| p.email == @email }

  		if(@pessoa != [])

  			if( @pessoa[0].senha.to_i == @senha.to_i )

  				session[:cafe] = @pessoa[0].id
  				session[:email] = @pessoa[0].email
          session[:grupo] = @pessoa[0].grupo

  				redirect_to pagina_principals_path

  			end

  		end
  	end


  end
end
