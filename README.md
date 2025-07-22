# BookStore - Rails Intro Project

A complete Ruby on Rails book management system that demonstrates core Rails framework features and best practices.

## Project Overview

BookStore is a web application that allows users to browse, search, and manage book collections. The application includes a complete management system for books, authors, categories, and reviews.

## Technology Stack

- **Ruby on Rails** 8.0.2
- **SQLite** database
- **Bootstrap 5.3** + SASS for responsive UI
- **Faker** for generating test data
- **HTTParty** for Open Library API integration
- **Kaminari** for pagination functionality

## Project Requirements Implementation

### ✅ 1. Database Design & Data Sources (25 points)
- [x] 1.1 Design database architecture (5 points)
- [x] 1.2 Import data from CSV files (5 points)
- [x] 1.3 Generate data using Faker (5 points)
- [x] 1.4 Fetch data from Open Library API (5 points)
- [x] 1.5 Manual data entry (2.5 points)
- [x] 1.6 Total data exceeds 200 records (2.5 points)

**Current Data Volume:** 776 records
- Categories: 10
- Authors: 50
- Books: 142
- Reviews: 574

### ✅ 2. Navigation & Menu System (10 points)
- [x] 2.1 Main navigation menu (5 points)
- [x] 2.2 Responsive navigation design (5 points)

### ✅ 3. Data Navigation & Detail Pages (30 points)
- [x] 3.1 Categories listing page (5 points)
- [x] 3.2 Authors listing page (5 points)
- [x] 3.3 Books listing page (5 points)
- [x] 3.4 Book detail page (5 points)
- [x] 3.5 Hierarchical navigation (Category→Books, Author→Books) (5 points)
- [x] 3.6 Related data display (5 points)

### ✅ 4. Search & Filter Functionality (15 points)
- [x] 4.1 Book search functionality (10 points)
- [x] 4.2 Category and author filtering (5 points)

### ✅ 5. HTML Validation & Bootstrap Styling (15 points)
- [x] 5.1 Valid HTML structure (5 points)
- [x] 5.2 Bootstrap responsive design (5 points)
- [x] 5.3 Custom CSS styling (5 points)

### ✅ 6. Git Version Control (5 points)
- [x] 6.1 Regular Git commits (20+ commits) (2.5 points)
- [x] 6.2 Complete project source code (2.5 points)

## Data Models

### Category
- `name`: Category name
- `description`: Description

### Author
- `name`: Author name
- `birth_date`: Birth date
- `bio`: Biography

### Book
- `title`: Book title
- `isbn`: ISBN number
- `publication_date`: Publication date
- `description`: Description
- `category_id`: Associated category
- `author_id`: Associated author

### Review
- `rating`: Rating (1-5)
- `comment`: Review comment
- `reviewer_name`: Reviewer name
- `book_id`: Associated book

## Features

### 🏠 Homepage
- Display overview statistics
- Latest books showcase
- Quick navigation access

### 📚 Book Management
- Paginated browsing of all books
- Search by title, author, or category
- Detailed book information pages
- Review system

### 👥 Author Management
- Author listing and detail pages
- View all works by an author
- Author biography information

### 📂 Category Management
- Hierarchical category browsing
- Filter books by category
- Category statistics

### 🔍 Search Functionality
- Full-text search for book titles
- Filter by author
- Filter by category
- Paginated search results

### 💬 Review System
- Add reviews for books
- 1-5 star rating system
- Display reviewer information

## Installation & Setup

### System Requirements
- Ruby 3.0+
- Rails 8.0+
- SQLite 3

### Installation Steps

1. Clone the project
```bash
git clone [project URL]
cd Intro_to_Rails_Project
```

2. Install dependencies
```bash
bundle install
```

3. Create database
```bash
rails db:create
rails db:migrate
```

4. Seed data
```bash
rails db:seed
```

5. Start server
```bash
rails server
```

6. Access application
```
Open browser and visit: http://localhost:3000
```

## Project Structure

```
app/
├── controllers/        # Controllers
│   ├── home_controller.rb
│   ├── categories_controller.rb
│   ├── authors_controller.rb
│   ├── books_controller.rb
│   └── reviews_controller.rb
├── models/            # Models
│   ├── category.rb
│   ├── author.rb
│   ├── book.rb
│   └── review.rb
├── views/             # Views
│   ├── layouts/
│   ├── home/
│   ├── categories/
│   ├── authors/
│   ├── books/
│   └── reviews/
└── assets/            # Static assets
    ├── stylesheets/
    ├── javascripts/
    └── images/

db/
├── migrate/           # Database migrations
└── seeds.rb          # Seed data

config/
├── routes.rb         # Route configuration
└── application.rb    # Application configuration
```

## Main Routes

```
GET    /                    # Homepage
GET    /categories         # Categories listing
GET    /categories/:id     # Category details
GET    /authors           # Authors listing
GET    /authors/:id       # Author details
GET    /books             # Books listing
GET    /books/:id         # Book details
GET    /books/search      # Book search
POST   /reviews           # Create review
GET    /about             # About page
```

## Data Sources Description

1. **Manual Data**: Core category data
2. **CSV Data**: Classic book information
3. **Faker Data**: Author information and review data
4. **API Data**: Book details from Open Library

## Development Features

- **MVC Architecture**: Clear Model-View-Controller separation
- **ActiveRecord Associations**: Complete database table relationships
- **Responsive Design**: Bootstrap framework ensures mobile compatibility
- **Search Optimization**: Efficient database queries and indexing
- **Pagination Handling**: Kaminari gem for large dataset management
- **Data Validation**: Model-level data integrity assurance
- **Exception Handling**: Graceful error handling mechanisms

## Contributors

This project was developed as part of the Web Development course at Red River College.

## License

MIT License
