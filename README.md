# ukus-pokus 

Sajt ima :
  - Public deo koji prikazuje recepte sa mogućnošću čitanja, ocenjivanja i filtriranja prikaza po sastojcima
  - Admin deo koji služi za upravljanje receptima, kategorijama, namirnicama i ostalim unosima u bazu

 **************** Recept ima:
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
  - status (on ili off) - int
  
 **************** Sastojak ima:
  - id - int
  - količinu - int
  - mernu jedinicu - string
  - naziv sastojka - string
  - status (on ili off) - int
  - id recepta kome pripada - FK
  
**************** Kategorija recepata ima:
  - id - int
  - naziv  (slano, slatko, ljuto, jesenje, prolećno, popularno, 1 sud, itd) - string
  - status (on ili off) - int
  
**************** Korisnik (admin) ima:
  - id - int 
  - ime - string
  - email - string
  - username - string
  - password - string
  - status (superadmin, admin i editor) - int
  
**************** Slika ima:
  - id - int
  - title - string
  - alt - string
  - link - string
  - status (on ili off) - int
  - id recepta na koji se odnosi - FK
  
**************** Komentar ima:
  - id - int
  - ime osobe koja komentarise - string
  - email - string
  - tekst komentara - text
  - vreme postavljanja komentara - timestamp
  - status (on ili off), default je nula, dok admin ne odobri - int
  - id recepta na koji se odnosi - FK

