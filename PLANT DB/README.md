PLANTA(PLANT)   
  plant_id(PK) (Número), Identificador de la planta  
  Plant_name : nombre de cada planta  
  Plant_family : familia a la que pertenece cada planta  
  Plant_irrigation_schedule : horario en el que se riega la planta  
  
ENCICLOPEDIA(WIKI)  
  Wiki_entry_id : número unico del articulo  
  Wiki_entry_name : nombre del articulo  
  Autor_name (FK) : nombre del autor que creo este articulo  

FOTOGRAFÍA(PICTURE)  
  Picture_id : identificador unico de cada foto  
  Picture_plant : planta que se reconoce en la foto  
  Plant_id (fk)   

CALENDARIO(CALENDAR)  
  Calendar_insert_id: accion que el calendario recordara  
  Calendar_insert_date : fecha en la que el calendario recuerda una acción  
  Calendar_insert_type : acción que se realiza a la planta  
  Plant_id (fk) 

AUTOR(AUTHOR)  
  Autor_id : identificador unico de cada autor  
  Autor_name : nombre del autor  
