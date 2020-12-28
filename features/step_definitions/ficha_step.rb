Quando("submeto o formulario da ficha") do
  find("a", :text => "Cadastros").click
  find("a", :text => "Fichas").click
  # find("button", :text => "Controles").click
  find("#EDTPESQUISACONTRATO").set "321"
  click_button "Controles"
  find("a", :text => "Cadastrar").click
  find("#EDTNOME").set "ALUNO AUTO"
  sleep 3
  click_button "Gravar Dados"
end

Então("vejo a lista de fichas") do
  expect(page).to have_css ".sa-placeholder"
end

#.......................DELETAR.......................

# Dado("que tenho a ficha indesejada") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Quando("eu solicito a exclusão dessa ficha") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Quando("confirmo a exclusão") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Entao("nao vejo mais a ficha na lista") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
