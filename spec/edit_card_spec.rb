require 'rails_helper'

  feature 'User edit card' do

    scenario 'successfully' do
      #setup
      card = Card.create(portugues: 'livro', ingles: 'Book')
      #exercicio   (visao do usuario)
      visit root_path  #visit metodo do capybara
      click_on 'livro' #click_on card.portugues
      click_on 'Editar'
      fill_in 'Ingles', with: 'Book'  #preencha o label ingles com o input Book
      click_on 'Atualizar'
      #validação/expectativas
      expect(page).to have_content 'Book'  # procurar dentro do html 'page' o conteudo Book


    end

  end
