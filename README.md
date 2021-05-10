# README

This project follows the tutorial found at https://guides.rubyonrails.org/getting_started.html
to better understand how a Rails application is made.

## Notes
Remember to run rails db:migrate on startup.

## Fixes for Issues
<br>

#### Webpacker::Manifest::MissingEntryError
Run the following command:

`bundle exec rake assets:precompile`

Source:  
https://stackoverflow.com/questions/52639256/webpackermanifestmissingentryerror

<br>

#### Process Hangs on Generate Command
If running the command `rails generate model` causes the executing process to
hang, it may be an issue with bin/.<br>
Run the following command:

`rake app:update:bin`

Source:  
https://stackoverflow.com/questions/31857365/rails-generate-commands-hang-when-trying-to-create-a-model
