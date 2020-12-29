Dado("que acesso a pagina de login") do
  visit "http://web.agphoto.com.br:8888/"
end

Quando("entro com minhas credenciais") do
  find("#EDTLOGINADM").set "mayke@ag.com.br"
  find("#EDTSENHAADM").set "123mudar"

  click_button "Entrar"
end

Então("sou direcionado para home") do
  expect(page).to have_css ".sidebar"
  # sleep 5
end
