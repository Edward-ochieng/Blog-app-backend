# Vilego Blog Backend
This is the Ruby on Rails API for Vilego Blog. Vilego Blog is a blog post app that helps a user create articles for other users to read and interact with.

Link to the [Frontend](https://github.com/Edward-ochieng/vilego-blogs-2)

# Table of Contents

1. [Getting Started](#getting-started)
   - [Install Ruby](#install-ruby)
   - [Install Rails](#install-rails)
   - [Install SQLite 3](#install-sqlite-3)
2. [Downloading This Project](#downloading-this-project)
3. [Technologies Used](#technologies-used)
4. [Contributors](#contributors)
5. [License](#license)

# Getting Started

## Install [Ruby](https://ruby-doc.org/)

- Verify the current version of Ruby running using the following command:

```
$ ruby -v
```

- We recommend version 3.0.2. If you need to upgrade you can install it using rvm:

```
$ rvm install 3.0.2 --default
```

## Install [Rails](https://rubyonrails.org/)

- Run the command:
```
$ gem install rails
```

## Install [SQLite 3](https://www.sqlite.org/)
- Install SQLite 3 using the following command:
```
$ Sudo apt install sqlite3
```
- Verify the installation using the command:
```
$ sqlite3 --version
```

# Downloading This Project
- Clone the repository and change directory into the folder using commands:
```
$ git clone git@github.com:Edward-ochieng/Blog-app-backend.git
$ cd Blog-app-backend
```
- Install gems using command:
```
$ bundle install
```
- Migrate and seed data by running the commands:
```
$ rails db:migrate
$ rails db:seed
```
- Launch the rails server using command:
```
$ rails s
```

# Technologies Used
- [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
- [Cloudinary](https://cloudinary.com/documentation/rails_integration)
- [JWT](https://github.com/jwt/ruby-jwt)
- [Rack CORS](https://github.com/cyu/rack-cors)

# Contributors
- [Allan Ngugi]()
- [Edward Ochieng](https://github.com/Edward-ochieng)
- [Joseph Mwinzi](https://github.com/Mwinzi)
- [Joseph Njenga](https://github.com/JosephNjeruNjenga)
- [Nicholas Ndikwe](https://github.com/k-l-a-u-s)
- [Rebecca Njeri](https://github.com/rebecca-2022)
- [Timothy Lenku](https://github.com/esipil)

# License
This project is under [MIT]() license.