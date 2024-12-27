# Buy-Sell-Listing-App Workflow Planning

# Goal
Develop a web application for buying and selling clothes that enables users to browse, filter, favorite, and communicate about listed items. Administrators will manage listings and handle sales updates.

# Features

### User Features:
* Homepage with Featured Items
* Display popular and new listings on the main feed.
* Filter and Search
* Filter items by price range.
* Search bar for quick lookup of specific items.
* Favorites
* Mark items as favorite to revisit later.
* Messaging
* Send direct messages to sellers to inquire about items.

### Admin Features:
* Post Items
* Create and upload new listings.
* Manage Listings
* Remove items.
* Mark items as SOLD.
* Communication Management
* Respond to buyer negotiations via app messaging.

# Tech Stack

### Frontend:
* HTML5, CSS3, JavaScript (ES6)
* jQuery for DOM manipulation.
* SASS/SCSS for styling.

### Backend:
* Node.js with Express.js for server-side logic.

### Database:
* PostgreSQL with pg library for database management.

### Version Control:
* Git for collaborative development.

# Routes and APIs

### Public Routes:
* GET / - Home page with featured listings.
* GET /items - List all items with filtering options.
* GET /items/:id - View a specific item.
* POST /messages - Send a message to a seller.

### Admin Routes:
* POST /admin/items - Add new item.
* DELETE /admin/items/:id - Remove item.
* PATCH /admin/items/:id/sold - Mark an item as sold.
* POST /admin/messages - Respond to messages.

# Database Schema
### Tables:
* Users
  id (PK)
  username
  email
  password_hash

* Items
  id (PK)
  title
  description
  price
  image_url
  user_id (FK)
  status (available/sold)

* Favorites
  id (PK)
  user_id (FK)
  item_id (FK)

* Messages
  id (PK)
  sender_id (FK)
  receiver_id (FK)
  item_id (FK)
  message
  timestamp

# Development Workflow

### Planning and Setup:
* Define routes and database schema.
* Initialize Git repository and create branches for features.

### Frontend and Backend Integration:
* Build RESTful APIs with Express.js.
* Connect database with PostgreSQL.
* Develop UI using HTML, CSS (SASS), and jQuery.
