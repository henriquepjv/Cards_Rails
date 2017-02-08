class CardsController < ApplicationController

  def index #isso é uma action
    @cards = Card.all
  end

  def show
      @card = Card.find(params[:id]) #pesquisa o card pelo ID passado na hora do GET
    end

  def new
    @card = Card.new #manda o @card para o form em new.html
  end

  def create
    @card = Card.new(card_params)

#@card.portugues = params [:card][:portugues]
#@card.ingles = params [:card][:ingles]
#@card.save
#redirect_to card_url (@card.id) ver que algumas rotas precisam de ID

      if  @card.save
        redirect_to @card  #usa os prefixos criados no rail routes
      else
        render 'new'
      end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    @card.update(ingles: params[:card][:ingles])
    redirect_to @card
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to cards_path
  end

  private
    def card_params
      params.require(:cards).permit(:portugues, :ingles)
    end

end
