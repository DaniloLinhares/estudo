

describe 'meu primeiro script' do
    

    it 'visitando uma pagina' do
        visit 'https://training-wheels-protocol.herokuapp.com/'
        puts page.title
    end


end