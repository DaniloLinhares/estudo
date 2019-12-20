describe 'caixa de selecao', :dropdown do
    
    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3

    end

    it 'intem especifico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        find('avenger-list')



    end





end