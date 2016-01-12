window_width 700

before_script {
  run 'npm install'
}

serve 'node server.js'
port 3000

route('/login') {
  fill_in "username", "jack"
  fill_in "password", "secret"
  click_button "Submit"
}
