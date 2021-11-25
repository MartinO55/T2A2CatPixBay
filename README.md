# README_T2A2_Martin_Olson

## Purpose

One of the things enabled by blockchain technology is the creation of a non-fungible token within a blockchain. In the same way as a cryptocurrency keeps a record of all transactions made throughout the life of the coin, the same technology can be used to record the chain of ownership for any type of computer file. For example, an image file can be rendered into code and incorporated into a cryptocurrency blockchain, making it impossible to counterfeit ownership of that token. One of the necessities of working with NFTs is that the blockchain that incorporates the NFTs is built into any site using them from the beginning, otherwise the NFT is no different to any other hexadecimal sequence. Therefore, in order to create a marketplace for NFTs, the marketplace will need a blockchain for the NFTs built into it from the ground up; as such, the marketplace itself needs to be completely new.
This application is a Ruby on rails website that acts as a two-sided marketplace on which users engage in the buying and selling of cat photos. This website acts as a prototype/proof-of-concept for a website that would act as a two-sided marketplace similar to eBay for the trading of NFTs, non-fungible tokens. Because at this stage creating a new blockchain, and scoping out the various options for possible currencies or cryptocurrencies to be used in a final version of this type of marketplace is impossible within the time limits placed on the developer by the assignment, blockchain support will be added later.

## Functionality

### Features

At this time, implementing either a blockchain or an NFT within the site to make it functional is out of scope of the project, due to the time limits imposed by the assignment due date. Still, this app features user authentication and authorisation with logins and passwords, a PostgreSQL database for user data, encryption using devise for sensitive data, and Pundit for authentication. The app allows users to upload pictures (via AWS S3) and keep ownership of priveleges associated with the upload via the pundit gem. The app also allows users to purchase the privleges associated with an image uploaded by another user.

### Detailed Explanations

There are three major databases in this app, the Users database, the profiles database and the pictures database. The Users database was generated using the Devise Gem, and specifically provides for users logging in and signing up with emails and passwords. This database has been left unchanged since it was generated, due to the sensitive nature of the personal data being stored (specifically passwords), which devise encrypts, and it was judged best to avoid any inadvertent exposing of this data. Furthermore, by leaving this database untouched, it will be easy to quickly update in future, should it become necessary if the version of devise currently implemented is discovered to have an as yet unknown vulnerability. As such, the whole point of this database is to store senstive user data in a way that is secure, compact, and easy to update, while still enabling each user to log in to a separate account.

The next database is the profiles database, which stores each users Username and ‘wallet’ details, necessary as the user database has been sectioned off as above. The profile database is indexed on the user’s database; with each user able to have one and only one profile, with each profile belonging to a user. The wallet details in the database are currently fictitious; there is a functionality in the show profile page that allows an authorised user to edit the contents of their wallet to allow them to make purchases on the site. Obviously, this would be replaced in any genuine version of the site, however the exact nature of this replacement would depend exactly how the market was expected to function. It would be possible to use either a currency like the Australian dollar, or it would be possible to use a crypto currency, or possibly both. To implement NFT trading as designed, the site needs to incorporate a blockchain so either would be possible. For this reason, the currency denominator has been left off the website.

The third table is the pictures database, which stores details of the uploaded images. The images can be uploaded with a title, a description, a price, and a non-fungible-token. In operations, this token would be generated by the blockchain incorporated into the app, but as previously mentioned, this is out of scope for this assignment. Each picture in the database belongs to a single profile, with each profile able to have many pictures, ranging from zero to however much storage $20 buys you on amazon S3.

The models of this app are picture, profile, user and transaction. The User model was generated by devise early on in the construction of this app and is used for controlling user login and authorisation. Each User has one (and only one) profile. Each profile belongs to a user, and has many pictures. The pictures model manages the pictures table, and each picture belongs to one profile and has one attached image. The final model is the transactions model and is implemented as a join table with the intention of storing records of sales, this feature is not implemented in app. The join table is implemented as a separate transaction model that belongs to the picture model and the profile model twice over, once as a buyer and once as a seller, as all transactions on this website are between different users, each of whom has one profile.

### Target Audience

The biggest issue with this technology is that only the NFT itself is unique, and each NFT is unique only to the blockchain it is in. for example, an NFT blockchain built using the bitcoin cryptocurrency would not preclude someone else building an NFT blockchain with the same items using the Ethereum cryptocurrency. Furthermore, there is no reason another person could not create a new fork in the blockchain being used for your NFT and compete with you using that new fork. It is worth noting as well that there are now hundreds of different cryptocurrencies, most of them with little or no future. Finally, there is also the major issue with NFTs, namely that owning the token does not grant ownership of the object itself, nor does it actually prevent the creation of copies of that item. Thus, in order for this website to be viable, it is vital that it runs ahead of the inevitable competition. The target audience for this app therefore has to be the enthusiastic early adopters of cryptocurrencies who are looking for a new frontier in cryptocurrencies. By capturing these early adopters, it is possible to get them invested in this blockchain making this app the de facto default for this type of trading.

### User Stories

Dave
Dave is a cryptocurrency enthusiast who has been mining bitcoins before they could be used for anything. He is a true believer in cryptocurrency and is enthusiastic about pushing the adoption of anything new in the field. Dave wants an app that lets him use his past investments in cryptocurrencies to gain elsewhere, and further push crypto currencies as a means of buying and selling items. So that he can realise his goals of making cryptocurrencies a viable alternative to other forms of money.

Susie
Susie is a relative newcomer to cryptocurrency who has been trading it since it became popular. She is constantly looking for the newest thing in crypto to get an edge in trading. Susie wants access to the latest and greatest things in cryptocurrencies so that she can get in on the ground floor of the next bitcoin or Ethereum.

### Sitemap

Catpixbay Sitemap

![CatPixBay Sitemap as of 24 November, showing main pages and where login or authorisation is required by pundit or devise](docs/Sitemap/T2A2_Sitemap.png)

### Wireframes

![CatPixBay landing page wireframe design](docs/Wireframes/Front_page.png)

![CatPixBay About us wireframe design](docs/Wireframes/About_us.png)

![CatPixBay marketplace page, where uses can buy and sell pictures of cats](docs/Wireframes/Marketplace.png)

![CatPixBay my account page where users can edit their password details or delete their account](docs/Wireframes/My_account.png)

### Screenshots

![CatPixBay Landing page screenshot](docs/Wireframes/Landing_page.png)

![CatPixBay About Us page explainging the website](docs/Screenshots/About_us.png)

![CatPixBay Edit User page screenshot where users can edit their password details or delete their account](docs/Screenshots/Edit_user.png)

![CatPixBay marketplace page listing pictures for sale](docs/Screenshots/marketplace.png)

![CatPixBay marketplace page listing with a photo of a cat for sale. This is working with Amazon S3 on the local server, because for some unknown reason totally par for the course with this project heroku and AWS are on the outs](docs/Screenshots/marketplace_with_a_cat_photo.png)

### Tech Stack

The Tech stack for this application is:

- Ruby on rails

- Postgresql 10 for Databases

- HTML

- CSS via Bootstrap

- Amazon AWS S3 for image storage

- Heroku for deployment

## ERD

Entity Relationship diagram created with drawio:

![CatPixBay Entity relationship diagram as of 24 november created with drawio, showing tables in database that used by the models and controllers; Users, Profiles, Pictures and Transactions](docs/ERD/T2A2_ERD_withActiveStorage.png)

## Third Party Services

Currently, the only third party services used for are app is bootstrap, which provides the CSS styling for the website, AWS S3 which is used for image storage, and Heroku, which is used for hosting and deploying the website.

## Trello Board Screenshots

In order to track tasks and progress for this assignment a trello board (<https://trello.com>) was used; what follows are the screenshots progressively taken before and after achieving various goals.

![Kanban board shot from 17 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_17Nov.png)

![Kanban board shot from 19 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_19Nov.png)

![Kanban board shot from 23 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_23Nov.png)

![Kanban board shot from 24 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_24Nov.png)

## Links

Github Repository: <https://github.com/MartinO55/T2A2CatPixBay>
Deployed Website: <https://cat-pix-bay.herokuapp.com/>
