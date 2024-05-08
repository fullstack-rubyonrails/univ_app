# README

This README shows steps performed for the committ.

Things coverd:

- Remove repeated variable from SHOW, EDIT & UPDATE add a mtehod under private for removed lines,
  call before_action on the top of student_controller and add method added in private for SHOW, EDIT & UPDATE
- Add a FORM partial (_form.thml.erb) for EDIT & NEW, render form_partial in edit and new
- Header Text changes for EDIT & NEW page in Card-Hear
- Button text changes for EDIT & NEW page in BUTTON text
- Create error partial in Views/shared/_error.html.erb (error_partial) and initialize OBJ instead of @student (generic)
  -Refer obj: @student because here we are accessing student. Specific to student folder
  =Refer ojb: @courses if accessing courses (when working with edit & create functionality. Specific to courses folder)