describe 'caixa de selecção' do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando opções' do
        
        check('thor')

    end

    it 'desmarcando opções' do
        uncheck('antman')

    end

    it 'marcando com find set true'do
        
        find('input[value=cap]').set(true)

    end

    it 'marcando com find set true'do
        
        find('input[value=guardians]').set(false)

    end

    after(:each) do 
        sleep 3
    end
end
