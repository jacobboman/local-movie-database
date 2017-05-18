Vad vi behöver:

Interface
  
  sida för film
   Namn
   skådespelare/regissör
    länkar till respektive professional
    
   cover photo
    se förstorad bild
    
   längd
    
   år
    länk till alla filmer samma år (eventuellt)

  sökfunktion
    STOR på startsidan
    resultatsida

  startsida
    nya filmer
    länkar till slumpvalda filmer?
    (genreregister?)
    (skådespelare/regissör-register)

  sida för skådespelare/regissör
    namn
    bild
    filmer hen varit med i
    födelseår
    conutry

Db
  
  Professionals
    foreign key->MxP   
  Movies
    foreign key->MxP
  MoviesxProfessionals
    foreign key->Movies, foreign key->Professionals
  Genres

  Languages
   
  Countries

Modeller för hantering av data
  alla modeller
   
   Professional
    Actor?
    Director?
   Movie
    genre?
    language?
    country?
   (User)


användare
  egenskaper
    id
    namn
    andra värden
  AUTH
    Illuminate/Auth
    login
    saltade lösenord
    logiken
  sessions
    cookies
    (CSRF - Cross Site Request Forgery)

kaffe
  när? 
    nu?
      ja?