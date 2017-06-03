# Overtime app

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week.

## Models:

* Post -> date:date rationale:text
* User -> devise
* AdminUser -> STI
* AuditLog


## Features:

* Approval Workflow
* SMS sending -> link to approval or overtime input
* Administrate admin dashboard
* Block non admin and guests users
* Email summary to managers for approval
* Needs to be documented if employee did not log overtime


## UI:

* Bootstrap -> formatting
* Icons from glyphicons
* Update the styles for forms

## Refactor TODOS:

* Integrate validation for phone attr in User:
  # No spaces or dashes
  # Exactly 10 characters
  # All characters have to be a number
