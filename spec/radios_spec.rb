describe 'botões de radio' , :radio do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleção por id' do 
        choose('cap')
    end

    it 'seleção por find' do
        find('input[value=guardians]').click
    end


    after(:each) do 
        sleep 3     
    end

end