<?php
class SetingsModel extends Model{
	public function Index(){
		
		if (isset($_POST['install'])) {
			
			$brojac = 1;
			$query = new Query;
			$ing = $query->allquery('ingredients');
			$cat = $query->allquery('categories');
			$uni = $query->allquery('units');

			for ($ia=0; $ia < 32000 ; $ia++) { 
			// Ime recepta
			$recipe_name = 'Recept broj - '. mt_rand();
			// Kratak opis recepta
			$recipe_description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum elit sit amet aliquet interdum. Phasellus pharetra sit amet lacus et tristique. In ac purus libero. Phasellus ac sagittis lorem.';
			// Vreme pripreme
			$recipe_time = rand(1, 24) * 5; // broj minuta
			// prljavo posudje
			$dirty_dishes = rand(1, 10);
			// Opis pripreme recepta
			$instructions = "<strong> Korak 1 </strong><br><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum elit sit amet aliquet interdum. Phasellus pharetra sit amet lacus et tristique. In ac purus libero. Phasellus ac sagittis lorem.</p><br><strong> Korak 2 </strong><br><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum elit sit amet aliquet interdum. Phasellus pharetra sit amet lacus et tristique. In ac purus libero. Phasellus ac sagittis lorem.</p><br><strong> Korak 3 </strong><br><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum elit sit amet aliquet interdum. Phasellus pharetra sit amet lacus et tristique. In ac purus libero. Phasellus ac sagittis lorem.</p><br>";

			$rand = rand(2, 6);
			$rand_cat = rand(2, 6);
			$random_ing = array_rand($ing, $rand);
			$random_cat = array_rand($cat, $rand_cat);
			$random_uni = array_rand($uni, $rand);
			$recipe_ingrs = '';
			$recipe_ingrs_id = '';
			for ($i=0; $i < $rand ; $i++) { 
				$recipe_ingrs .= ($random_ing[$i]+1). ','.rand(30, 100).','. ($random_uni[$i]+1).'/';
				$recipe_ingrs_id .= ($random_ing[$i]+1).',';
			}
			$recipe_ingrs = trim($recipe_ingrs, "/"); // Upis u bazu sastojka 

			$recipe_categories = '';
			for ($i=0; $i < $rand_cat ; $i++) { 
				$recipe_categories .= ','.($random_cat[$i]+1);
			}
			$recipe_categories = $recipe_categories.',';// Upis u bazu kategorije 
			$recipe_ingrs_id = ','.$recipe_ingrs_id;
			// slike
			$recipe_photos = '1,2,3';
			// user 
			$user = $_SESSION['user_data']['user_id'];

			$this->query('INSERT INTO recipes (recipe_title, description, prep_time, dirty_dishes, instructions, status, recipe_cats, recipe_ingrs, recipe_ingrs_id, recipe_photos, user_id) VALUES (:recipe_title, :description, :prep_time, :dirty_dishes, :instructions, :status, :recipe_cats, :recipe_ingrs, :recipe_ingrs_id, :recipe_photos, :user_id)');
			$this->bind(':recipe_title', $recipe_name);
			$this->bind(':description', $recipe_description);
			$this->bind(':prep_time', $recipe_time);
			$this->bind(':dirty_dishes', $dirty_dishes);
			$this->bind(':instructions', $instructions);
			$this->bind(':status', 1);
			$this->bind(':recipe_cats', $recipe_categories);
			$this->bind(':recipe_ingrs', $recipe_ingrs);
			$this->bind(':recipe_ingrs_id', $recipe_ingrs_id);
			$this->bind(':recipe_photos', $recipe_photos);
			$this->bind(':user_id', $user);
			$this->execute();

			$brojac++;
			
			}
		}
	}
}