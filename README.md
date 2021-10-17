# Robot Framework Beginner

Robot Framework Beginner course from [QANinja Academy](https://qaninja.academy/).

You can access my certified of completion [here](https://qaninja.academy/certificado/4443).

The course used the [Training Wheels Protocol](https://training-wheels-protocol.herokuapp.com/) website to teach how to do automated tests with Robot Framework, Selenium Library and Python3.

## With this course I could learned:
* What is the Robot Framework.
* Why and When should I used this.
* How to prepare the development environment, with Robot Framework, Selenium Library and Python3.
* How to organize the files (tests and logs).
* How to do tests with:
** Checkbox;
** Radio buttons;
** Combobox;
** Tables;
** Forms;
** Notifications;
** Variables;
** Keywords;
* How to take screenshots to produce test evidence.
* How to _read/understand_ a log file.
* How to deal with fail tests.
* How to make a 'base' file to handle common information/data to all tests.

## How to use this project

If you want to know if this project still working, here is the steps to use it.

1. Make sure you have Python3:

`python --version`

2. Make sure you have pip installed: 

`pip --version`

3. Make sure you have Robot installed:

`robot --version`

`pip install robotframework` to install, if you don't have it.

4. Install the Selenium Library for Robot:

`pip install robotframework-seleniumlibrary`

5. Make sure you have the best Driver for Firefox in your PATH, e. g., place it in /usr/bin or /usr/local/bin. You can download it [here](https://github.com/mozilla/geckodriver/releases).

6. Clone this repository.

7. You can use the following command to make a test:

`cd web/tests`
`robot -d log login_form.robot`

## Notes

* The _web-pessoais_ folder contains a personal test that I did to pratice what I learned. You probably won't be able to use it because it doesn't have the _base.robot_ file with the username and password to make the login test.
* Even if you don't clone this repository, you will still be able to see the test logs I ran, in the folder _web/tests/log_, including the screenshots of all tests.

## Keep in touch

Make yourself comfortable to contact me on [Linkedin](linkedin.com/in/julianamachado/) to discuss about this project.