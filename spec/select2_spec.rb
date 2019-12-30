describe 'Drag and drop' do
    
    describe 'single'do
        
    
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'selecionar ator por nome' do
            
            find('.select2-selection--single').click
            sleep 2
            find('.select2-results__option', text: 'Adam Sandler').click  
            
        end

        it 'busca e clicar no ator' do

            find('.select2-selection--single').click
            sleep 2
            find('.select2-search__field').set 'Chris Rock'
            sleep 2
            find('.select2-results__option').click  



        end
    end




end