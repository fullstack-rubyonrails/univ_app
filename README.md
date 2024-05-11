# README

This README shows steps performed for the committ.

Things coverd:

- Add require_user method BEFORE action in application_controller
- Skip_before_aciton, require_user in CORUSES_CONTROLLER
- Skip_before_action, require_user in LOGINS_CONTROLLER for new & create action
- Skip_before_action, require_user in PAGES_CONTROLLER for about action
- Skip_before_action, require_user in STUDENT_CONTROLLER for new & create action
- Convert Main Logo, Courses and Enrollment to link to relevant pages in NAVIGATION partial
  - Restrict Student Directory access only to lggedin user
- Add class: active in email lable feild for text overlaping
- In index.html.erb change card option Veiw Student Profile to LINK
- Restrict other users profile edit from browser link