# README

This README shows steps performed for the committ.

Things coverd:

- Add routes for LOGIN, SIGNUP & DESTROY
- Create and copy code for LOGIN in new.html.erb in VIEWS/LOGINS
- Create DESTROY & CREATE pages with the name destroy.html.erb & create.html.erb in VIEW/LOGINS
- Create session_link method in application_helper.rb file;
  - LOGIN link for not LOGEDIN user
  - LOGOUT link for LOGGEDIN user
  and add this method in _navigation.html.erb file
- LOGINS_CONTROLLER methods;
  - Create & Destroy
- APPLICATION_CONTROLLER methods;
  -Current_user
  -Logged_in?
  Since these methods are created in APPLICATION_CONTROLLER, added helper_method for  current_user & logged_in?