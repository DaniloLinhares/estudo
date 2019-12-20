describe 'testando logar e relatorio pesonalizado' do
    
    it ' login' do
        
        visit 'http://192.168.0.80:8032/wt-16.05.H/index.jsp'
        fill_in 'login', with: 'suporte'
        fill_in 'inputPassword3', with: 'W3b7r@n$2.0'
        click_link 'Entrar'
    
        #expect(find('#blip-chat-close-icon').visible?).to be true
        #expect(find('#lb-pendencias')).to have_content 'Mostrar Pendências'
        expect(find('#message').text).to eq 'Olá, posso te ajudar?'
        sleep 3

        #drop = find('.a-menu-principal')
        #drop.find('.ul-menu-principal').click_link 'Relatórios'
        #sleep 3

    end


end