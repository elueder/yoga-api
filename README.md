Yoga App API

Client:
- Github: https://github.com/elueder/yoga-sequence-client
- Deployed: https://elueder.github.io/yoga-sequence-client/
API:
- Github: https://github.com/elueder/yoga-api
- Deployed: https://limitless-springs-58027.herokuapp.com/

Built with:
- Rub
- Ruby on Rails
- CURL

Planning
I began with the poses table because this is the basic building block for all yoga classes, and teachers can make a list of interesting peak poses that they want to use. Teachers can log the muscle action for poses and cues they want to use in class. In future versions I will connect to sequences and classes.

Future versions
- create link between users and poses to sequences and classes
- connect to the Spotify API to integrate playlists for class with sequences

Development Process
I began by making my ERDs and building from there. I learned about modeling relationships between tables and how to organize the database structure and how to manipulate the API to be protected for each signed in user. I struggled with connecting the front end to a PATCH request but worked through it with DOM traversal.

Wireframes: https://imgur.com/a/JjGlgHw

User Stories:
1. User wants to create new yoga pose entry to use in class
2. User wants to know what muscle action will happen with that pose
3. User wants to take part of a sequence and copy it for a modified sequence (stretch)

ERD: https://imgur.com/a/ltmDJx5
