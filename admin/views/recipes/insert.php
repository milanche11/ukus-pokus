<h1>Insert recipes</h1><hr>



<?php $query = new Query; ?>
<form>
    <label>Ime Recepta</label>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="Name recipes"><br>
    </div>
  </div>
    <label>Kratak opis</label>
  <div class="row">
  <div class="col">
      <input type="text" class="form-control" placeholder="Do 200 karaktera"><br>
  </div>
</div>
  <div class="row">
    <div class="col">
      <label>Vreme pripreme</label><input type="text" class="form-control" placeholder="Preparation time">
    </div>
    <div class="col">
      <label>Prljavo posudje</label><input type="text" class="form-control" placeholder="Drty dishes"><br>
    </div>
  </div>

  <label>Sastojci</label>
  <div class="row"> 
    <div class="col">
      <select class="form-control" id="">

      <?php foreach($query->allquery('ingredients') as $item) : ?>  
        <option value="<?php echo $item['ingredient_id']; ?>"><?php echo $item['ingredient_name']; ?></option>
      <?php endforeach; ?>

    </select>
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="kolicina">
    </div>
    <div class="col">
      <select class="form-control" id="">

      <?php foreach($query->allquery('units') as $item) : ?>  
        <option value="<?php echo $item['unit_id']; ?>"><?php echo $item['unit_name']; ?></option>
      <?php endforeach; ?>

    </select>
    </div>
  </div>
  <div class="container-fluid">
   <div class="col-lg-10 offset-lg-1">
    <label>Kategorije</label>
    <select class="form-control form-control-lg custom-select" multiple style="width: 100%" aria-label="Search for..." name="pretraga[]">

              <?php foreach($query->allquery('categories') as $item) :?>
                <option value="<?php echo $item['cat_id']; ?>"> <?php echo $item['cat_name']; ?> </option>
              <?php endforeach; ?>

    </select>   
  </div>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Opis recepta</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
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
      <button type="button" class="btn btn-success">Unesi recept</button>
    </div>
  </div>
</form>