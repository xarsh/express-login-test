window_width 700

before_script {
  run 'npm install'
}

serve 'node server.js'
port 3000

route('/login') {
  fill_in "username", with: "jack"
  fill_in "password", with: "secret"
  click_button "Submit"
}
