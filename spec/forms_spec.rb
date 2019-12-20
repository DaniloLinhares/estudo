describe 'forms' do
    
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'


    end

    it 'senha incorreta' do
        
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: '1234!'
        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'

    end


    it 'usuario incorreto' do
        
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark1111'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

end