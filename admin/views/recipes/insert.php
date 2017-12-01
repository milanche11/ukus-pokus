<h1>Insert recipes</h1><hr>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>

<?php $query = new Query; ?>
<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    <label>Ime Recepta</label>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" name="name_recipes" placeholder="Name recipes"><br>
    </div>
  </div>
    <label>Kratak opis</label>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" name="descriptions" placeholder="Do 200 karaktera"><br>
    </div>
  </div>
  <div class="row">
    <div class="col">
      <label>Vreme pripreme</label>
      <input type="text" class="form-control" name="time" placeholder="Preparation time">
    </div>
    <div class="col">
      <label>Prljavo posudje</label>
      <input type="text" class="form-control" name="drty" placeholder="Drty dishes"><br>
    </div>
  </div>


<?php $b=1; ?>
  <label>Sastojci</label>
  <div class="row"> 
    <div class="col-4">

      <select class="form-control" name="ingredients<?php echo $b; ?>" id="">

        <?php foreach($query->allquery('ingredients') as $item) : ?>  
          <option value="<?php echo $item['ingredient_id']; ?>"><?php echo $item['ingredient_name']; ?></option>
        <?php endforeach; ?>

      </select>
    </div>
    <div class="col-3">
      <input type="text" class="form-control" name="kolicina<?php echo $b; ?>" placeholder="kolicina">
    </div>
    <div class="col-4">
      <select class="form-control" name="units<?php echo $b; ?>" >

        <?php foreach($query->allquery('units') as $item) : ?>  
          <option value="<?php echo $item['unit_id']; ?>"><?php echo $item['unit_name']; ?></option>
        <?php endforeach; ?>

      </select>
    </div>
    <div class="col-1">
      <button type="button" class="btn btn-success btn-sm">+</button>
    </div>
    <?php $b++ ?>
  </div>


    <label>Kategorije</label>
      <select class="form-control form-control-lg custom-select" name="categories[]" multiple aria-label="Search for...">

                <?php foreach($query->allquery('categories') as $item) :?>
                  <option value="<?php echo $item['cat_id']; ?>"> <?php echo $item['cat_name']; ?> </option>
                <?php endforeach; ?>

      </select> 

  <div class="form-group">
    <label for="exampleFormControlTextarea1">Opis recepta</label>
    <textarea class="form-control" name="recept" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>


  <label class="custom-file">
    <input type="file" id="file2" class="custom-file-input">
    <span class="custom-file-control">Image</span>
  </label>
  <label class="custom-file">
    <input type="file" id="file2" class="custom-file-input">
    <span class="custom-file-control">Image</span><br>
  </label>
  <label class="custom-file">
    <input type="file" id="file2" class="custom-file-input">
    <span class="custom-file-control">Image</span>
  </label>
  <label class="custom-file">
    <input type="file" id="file2" class="custom-file-input">
    <span class="custom-file-control">Image</span>
  </label>
  <div class="row"> 
    <div class="col">
      <input class="btn btn-primary" name="submit" type="submit" value="Add" />
    </div>
  </div>
  <input type="hidden" name="ime" value="<?php echo $_SESSION['user_data']['user_id'];?>">
   <input type="hidden" name="b" value="<?php echo $b ;?>">
</form>

<script>
  $("select").select2();

$("select").on("select2:unselect", function (evt) {
  if (!evt.params.originalEvent) {
    return;
  }
  
  evt.params.originalEvent.stopPropagation();
});
</script>