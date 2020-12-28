Dado("que acesso o formulario de cadastro de contrato") do
  find("a", :text => "Cadastros").click
  find("a", :text => "Contratos").click
  # find("button", :text => "Controles").click
  click_button "Controles"
  find("a", :text => "Cadastrar").click
end

Dado("que eu tenho a seguinte informcao:") do |table|
  @campo = table.rows_hash
  # find("#EDTCONTRATO").set @campo[:numero]
  find("#EDTFECHADO").set @campo[:data]
  elem1 = find("#EDTFORNECEDOR").set @campo[:prestador]
  elem1.send_keys :tab
  sleep 2
  # find("#EDTINSTITUICAO").set @campo[:inst]
  sleep 2
  elem2 = find("#CBTIPOINSTITUICAO").find("option", text: "Faculdade").select_option
  sleep 2
  el3 = find("#EDTCEP").set @campo[:cep]
  el3.send_keys :tab
  sleep 2
  find("#EDTENDERECO").set @campo[:endereco]
  sleep 2
  find("#EDTNUMERO").set @campo[:num]
  sleep 2
  find("#EDTBAIRRO").set @campo[:bairro]
  sleep 2
  find("#EDTFONES").set @campo[:fone]
  sleep 2
  find("#EDTCURSO").set @campo[:curso]
  sleep 2
  el4 = find("#EDTEVENTOS").set @campo[:evento]
  el4.send_keys :tab
  sleep 2
  find("#CBPERIODO").find("option", text: "Tarde").select_option
  sleep 2
  find("#CBTIPOCONTRATO").find("option", text: "não sei").select_option
  sleep 2
  el5 = find("#EDTFORMANDOS").set @campo[:fichas]
  el5.send_keys :tab
  sleep 2
  find("#EDTPARTICIPANTES").set @campo[:partc]
  sleep 2
end

Quando("submeto o cadastro") do
  click_button "Gravar Dados"
end

Então("devo ver esse na lista de contrato") do
  expect(page).to have_css ".sa-placeholder"
  sleep 10
end
