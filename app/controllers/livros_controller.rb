class LivrosController < ApplicationController

  def index

  	@livros = Livro.all

  end

  def show

  	@livro = Livro.find(params[:id])
  	
  end

  def new

  	@livro = Livro.new
    @estanteevs = Estanteev.all

  end

  def create

  	@livro = Livro.new(livros_params)

  	if @livro.save
     redirect_to livros_path
    else
     render 'new'
    end  
  	
  end

  def edit

  	@livro = Livro.find(params[:id])
    @estanteevs = Estanteev.all
  	
  end

  def update

  	@livro = Livro.find(params[:id])
  	@livro.update(livros_params)
  	redirect_to livros_path
  	
  end

  def destroy

  	@livro = Livro.find(params[:id])
  	@livro.destroy
  	redirect_to livros_path
  	
  end

  private
   def livros_params

   	 params.require(:livro).permit(:titulo, :autor, :sinopse, :estante, :capa, :estanteev_id)
   	
   end

end
