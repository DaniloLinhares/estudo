describe 'iframes', :carr do
    
    describe 'bom' do
        
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/nice_iframe'
        end

        it 'adicionar no carrinho' do
            
            within_frame('burgerId') do
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end

        end

    end

    describe 'ruim', :ruim do
        
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/bad_iframe'
        end

        it 'carrinho vazio' do
            
            script = '$(".box-iframe").attr("id", "tempid");'
            page.execute_script(script)

            within_frame('tempid') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3
            end
            
            
        end




    end




end