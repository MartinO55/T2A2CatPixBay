# README_T2A2_Martin_Olson

## Purpose

One of the things enabled by blockchain technology is the creation of a non-fungible token within a blockchain. In the same way as a cryptocurrency keeps a record of all transactions made throughout the life of the coin, the same technology can be used to record the chain of ownership for any type of computer file. For example, an image file can be rendered into code and incorporated into a cryptocurrency blockchain, making it impossible to counterfeit ownership of that token. One of the necessities of working with NFTs is that the blockchain that incorporates the NFTs is built into any site using them from the beginning, otherwise the NFT is no different to any other hexadecimal sequence. Therefore, in order to create a marketplace for NFTs, the marketplace will need a blockchain for the NFTs built into it from the ground up; as such, the marketplace itself needs to be completely new.
This application is a Ruby on rails website that acts as a two-sided marketplace on which users engage in the buying and selling of cat photos. This website acts as a prototype/proof-of-concept for a website that would act as a two-sided marketplace similar to eBay for the trading of NFTs, non-fungible tokens. Because at this stage creating a new blockchain, and scoping out the various options for possible currencies or cryptocurrencies to be used in a final version of this type of marketplace is impossible within the time limits placed on the developer by the assignment, blockchain support will be added later.

## Functionality

### Features

At this time, implementing either a blockchain or an NFT within the site to make it functional is out of scope of the project, due to the time limits imposed by the assignment due date. Still, this app features user authentication and authorisation with logins and passwords, a PostgreSQL database for user data, encryption using devise for sensitive data, and Pundit for authentication. The app allows users to upload pictures (via AWS S3) and keep ownership of priveleges associated with the upload via the pundit gem. The app also allows users to purchase the privleges associated with an image uploaded by another user.

### Detailed Explanations

The high level abstractions in this app are...

The models of this app are...

The database relations in this app are...

### Target Audience

The biggest issue with this technology is that only the NFT itself is unique, and each NFT is unique only to the blockchain it is in. for example, an NFT blockchain built using the bitcoin cryptocurrency would not preclude someone else building an NFT blockchain with the same items using the Ethereum cryptocurrency. Furthermore, there is no reason another person could not create a new fork in the blockchain being used for your NFT and compete with you using that new fork. It is worth noting as well that there are now hundreds of different cryptocurrencies, most of them with little or no future. Finally, there is also the major issue with NFTs, namely that owning the token does not grant ownership of the object itself, nor does it actually prevent the creation of copies of that item. Thus, in order for this website to be viable, it is vital that it runs ahead of the inevitable competition. The target audience for this app therefore has to be the enthusiastic early adopters of cryptocurrencies who are looking for a new frontier in cryptocurrencies. By capturing these early adopters, it is possible to get them invested in this blockchain making this app the de facto default for this type of trading.

### User Stories

Dave
Dave is a cryptocurrency enthusiast who has been mining bitcoins before they could be used for anything. He is a true believer in cryptocurrency and is enthusiastic about pushing the adoption of anything new in the field. Dave wants an app that lets him use his past investments in cryptocurrencies to gain elsewhere, and further push crypto currencies as a means of buying and selling items. So that he can realise his goals of making cryptocurrencies a viable alternative to other forms of money.

Susie
Susie is a relative newcomer to cryptocurrency who has been trading it since it became popular. She is constantly looking for the newest thing in crypto to get an edge in trading. Susie wants access to the latest and greatest things in cryptocurrencies so that she can get in on the ground floor of the next bitcoin or Ethereum.

### Sitemap

### Screenshots

### Tech Stack

The Tech stack for this application is:

- Ruby on rails

- Postgresql 10 for Databases

- HTML

- CSS via Bootstrap

- Amazon AWS S3 for image storage

- Heroku for deployment

## ERD

## Third Party Services

## Database Schema

## Trello Board Screenshots

In order to track tasks and progress for this assignment a trello board (<https://trello.com>) was used; what follows are the screenshots progressively taken before and after achieving various goals.

![Kanban board shot from 17 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_17Nov.png)

![Kanban board shot from 19 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_19Nov.png)

![Kanban board shot from 23 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_23Nov.png)

![Kanban board shot from 24 November. The kanban Board was used for tracking tasks throughout the project](docs/KanbanBoardShots/Kanban_Board_T2A2_24Nov.png)

## Links

Github Repository: <https://github.com/MartinO55/T2A2CatPixBay>
Deployed Website:
