name "lamp_server"
description "A role to configure Linux based servers with Apache, MySQL and PHP"
run_list "recipe[apache2]", "recipe[mysql::server]", "recipe[php]"