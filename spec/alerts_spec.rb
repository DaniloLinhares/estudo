describe 'Alertas de JS', :com do
        
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end

    it 'alerta' do
        
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 4
    end

    it 'alerta confirma', :l do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 4

    end

    it 'alerta não confirma' do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 4

    end

    it 'prompt', :pron do
        
        accept_prompt(with: 'Danilo') do
            click_button 'Prompt'
            sleep 4  
        end

        expect(page).to have_content 'Olá, Danilo'
        sleep 2

    end

    it ' dismiss prompt', :dis do
        
        dismiss_prompt do
            click_button 'Prompt'
            sleep 4  
        end
        
        expect(page).to have_content 'Olá, null'
        sleep 2

    end
  

end