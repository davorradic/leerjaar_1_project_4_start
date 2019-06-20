 <!-- Portfolio Item Heading -->
 <h1 class="my-4" style="padding-top:40px;">Upload logs
        <small>(merken)</small>
      </h1>
      <!-- Related Projects Row -->
      <h3 class="my-4"></h3>
      <div class="row">
        <div class="col-md-3 col-sm-6 mb-4">
            <form method="GET" >
                <select name="plant_id">
                <?php
                $stmt = $conn->prepare("SELECT * FROM plant"); $stmt->execute();
                $row = $stmt->fetchAll();
                if(count($row) == 0){
                echo 'Geen resutaten';
                } else {
                    foreach($row as $r){
                ?>
                        <option value="<?=$r['id']?>"><?=$r['naam']?></option>
                <?php 
                    }
                }
                ?>
                </select>
                <input type="hidden" name="page" value="upload" />
                <input type="submit" name="plant" value="selecteer">
            </form>
        <?php  
        
            if(isset($_POST['submit_log'])){
                $errors = [];
                //upload zie: https://www.w3schools.com/php/php_file_upload.asp
                
            }
            if(isset($_GET['plant_id'])){
        ?>

          <form method="POST" action="" enctype="multipart/form-data">
            <div class="form-group">
                <label for="merk_id" >Merk</label>
                <select name="merk_id" id="merk_id">
                <?php
                $stmt = $conn->prepare("SELECT * FROM merk WHERE plant_id = ". intval($_GET['plant_id'])); $stmt->execute();
                $row = $stmt->fetchAll();
                if(count($row) == 0){
                echo 'Geen resutaten';
                } else {
                    foreach($row as $r){
                ?>
                        <option value="<?=$r['id']?>"><?=$r['naam']?></option>
                <?php 
                    }
                }
                ?>
                </select>
            </div>
            <div class="form-group">
                <label for="naam" >Naam van log</label>
                <input type="text" name="naam" value="" id="naam"/>
                <?php  echo (isset($errors['naam']) ? '<small class="form-text text-muted alert alert-danger">'.$errors['naam'].'</small>' : '');?>
            </div>
            <div class="form-group">
                <label for="Beschrijving" >Beschrijving</label><br>
                <textarea name="beschrijving" value="" id="Beschrijving"></textarea>
                <?php  echo (isset($errors['beschrijving']) ? '<small class="form-text text-muted alert alert-danger">'.$errors['beschrijving']. '</small>': '');?>
            </div>
            <div class="form-group">
                <label for="log_bestand" >Log bestand</label>
                <input type="file" name="fileToUpload" id="log_bestand" />
                <?php  if(isset($errors['image']) && count($errors['image'])) {foreach($errors['image'] as $i){echo '<small class="form-text text-muted alert alert-danger">'.$i . '</small><br>';}};?>
            </div>
            <input type="submit" name="submit_log" value="Toevoegen" />
          </form>  
          <?php 
            }
            ?>         
        </div>
      </div>
      <!-- /.row -->