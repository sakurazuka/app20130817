step 'サイトにアクセスする' do
  Capybara.app_host = "http://localhost:3000/"
end

step ":nameページを表示する" do |name|
  case name
  when "トップ"
    visit '/'
  when "ログイン"
    visit new_user_session_path
  when "新規登録"
    visit new_user_registration_path
  end
end

step ":messageと表示されていること" do |message|
  expect(page).to have_content(message)
end

step "Welcome! You have signed up successfully.と表示されていること" do
  expect(page).to have_selector('.alert-success', text: "Welcome! You have signed up successfully.")
end

step ":link_nameリンクをクリックする" do |link_name|
  click_link link_name
end

step ":button_nameボタンをクリックする" do |button_name|
  click_button button_name
end

step ":field_nameを入力する" do |field_name|
  case field_name
  when 'Email'
    value = "test@test.com"
  when 'Password'
    value = "testtest"
  when 'Password confirmation'
    value = "testtest"
  end

  fill_in field_name, with: value
end
