Monkey Business
=========

Mo Ma Mo

Ruby on Rails
-------------

This application requires:

-   Ruby
-   Rails

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Database
--------

This application uses PostgreSQL with ActiveRecord.

Development
-----------

-   Template Engine: ERB
-   Testing Framework: RSpec
-   Front-end Framework: Bootstrap 3.0 (Sass)
-   Form Builder: SimpleForm
-   Authentication: Devise
-   Authorization: CanCan
-   Admin: None

Email
-----

The application is configured to send email using a SMTP account.

Email delivery is disabled in development.

Getting Started
---------------

Regsiter
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/registrations -d "{\"user\":{\"email\":\"manu@example.com\",\"name\":\"anotheruser\",\"password\":\"secret123\",\"password_confirmation\":\"secret123\"}}"


Login
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/sessions -d "{\"user\":{\"email\":\"manu@example.com\",\"password\":\"secret123\"}}"

Logout
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE http://localhost:3000/api/sessions/\?auth_token\=TWdn6A5zDiBS2kWGq6nc

GetTasks
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/tasks/\?auth_token\=TWdn6A5zDiBS2kWGq6nc

Get user timeline
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/timeline/\?auth_token\=TWdn6A5zDiBS2kWGq6nc

Post user timeline
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/checkin/\?auth_token\=TWdn6A5zDiBS2kWGq6nc -d "{\"timeline\":{\"task_id\":\"HlRtBM_u7Ea055QF41Z9vazwcIZZWw\", \"id\":\"HlRtBM_u7Ea055QF41Z9vazwcIZZW4\"}}"

Edit user timeline
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/timeline/\?auth_token\=TWdn6A5zDiBS2kWGq6nc -d "{\"timeline\":{\"id\":5,\"user_id\":11,\"task_id\":1,\"custom_text\":null,\"created_at\":\"2015-03-13T22:03:14.832Z\"}}"

delete user timeline
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE http://localhost:3000/api/timeline/\?auth_token\=TWdn6A5zDiBS2kWGq6nc -d "{\"timeline\":{\"id\":5}}"

Get all chatmessages
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/chatmessages/\?auth_token\=TWdn6A5zDiBS2kWGq6nc

Post chatmessages
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/post/\?auth_token\=TWdn6A5zDiBS2kWGq6nc -d "{\"chatmessage\":{\"user_id\":\"11\",\"task_id\":\"1\",\"message\":\"Deine Mudda\"}}"

Get live stats
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/live/\?auth_token\=TWdn6A5zDiBS2kWGq6nc

Documentation and Support
-------------------------

This is the only documentation.

#### Issues

Have fun

Similar Projects
----------------

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Contributing
------------

If you make improvements to this application, please share with others.

-   Fork the project on GitHub.
-   Make your feature addition or bug fix.
-   Commit with Git.
-   Send the author a pull request.

If you add functionality to this application, create an alternative
implementation, or build an application that is similar, please contact
me and I’ll add a note to the README so that others can find your work.

Credits
-------

Mo Ma Mo

License
-------

Under License of The Monkey Business Inc.
