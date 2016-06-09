window_width [320, 700]

before_script {
  run 'npm install'
}

serve 'node server.js'
port 3000

state(:anonymous) {
  entry_point '/'
}

state(:jack) {
  before_access {
    fill_in 'username', with: 'jack'
    fill_in 'password', with: 'secret'
    click_button 'Submit'
  }
  entry_point '/login'
}

state(:jill) {
  before_access {
    fill_in 'username', with: 'jill'
    fill_in 'password', with: 'birthday'
    click_button 'Submit'
  }
  entry_point '/login'
}
