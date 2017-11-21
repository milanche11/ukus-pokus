# ukus-pokus 

Sajt ima :
  - Public deo koji prikazuje recepte sa mogućnošću čitanja, ocenjivanja i filtriranja prikaza po sastojcima
  - Admin deo koji služi za upravljanje receptima, kategorijama, namirnicama i ostalim unosima u bazu

 **************** Recept ima: **************** 
  - id - int
  - kategorija string explode id kategorija - string
  - naziv - string
  - kratak opis - text
  - vreme pripreme izraženo u minutima - int
  - sastav string explode id sastojaka - string
  - slike string explode id fotki - string
  - tekstualno uputstvo po koracima - text
  - broj isprljanih sudova - int
  - vreme postavljanja recepta - timestamp
  - status (on ili off) - int (default je 1)
  - id usera koji ga je postavio - FK
  
 **************** Sastojak ima: **************** 
  - id - int
  - naziv sastojka - string
  - status (on ili off) - int (default je 1)
  
**************** Kategorija recepata ima: **************** 
  - id - int
  - naziv  (slano, slatko, ljuto, jesenje, prolećno, popularno, 1 sud, itd) - string
  - status (on ili off) - int (default je 1)
  
**************** Korisnik (admin) ima: **************** 
  - id - int 
  - ime - string
  - email - string
  - username - string
  - password - string
  - status (superadmin=1, admin=2 i editor=3, 0=isključen) - int (default je 1)
  
**************** Slika ima: **************** 
  - id - int
  - title - string
  - alt - string
  - link - string
  - status (on ili off) - int (default je 1)
 
**************** Rating ima: **************** 
  - id - int
  - naziv - enum (1,2,3,4,5)
  - vreme postavljanja ratinga - timestamp
  - status (on ili off) - int (default je 1)
  - id recepta na koji se odnosi - FK
  
**************** Komentar ima: **************** 
  - id - int
  - ime osobe koja komentarise - string
  - email - string
  - tekst komentara - text
  - vreme postavljanja komentara - timestamp
  - status (on ili off), default je nula, dok admin ne odobri - int
  - id recepta na koji se odnosi - FK
  
**************** Merna jedinica ima: **************** 
  - id - int
  - naziv merne jedinice - string
  - status (on ili off) - int (default je 1)

