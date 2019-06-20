    <!-- Portfolio Item Heading -->
    <h1 class="my-4" style="padding-top:40px;">Planten
        <small>op binennkweken.nl</small>
      </h1>

      <!-- Related Projects Row -->
      <h3 class="my-4">planten</h3>
      <div class="row">
        <?php
            $stmt = $conn->prepare("SELECT * FROM plant"); $stmt->execute();
            $row = $stmt->fetchAll();
            if(count($row) == 0){
              echo 'Geen resutaten';
            } else {
                foreach($row as $r){
        ?>
        <div class="col-md-3 col-sm-6 mb-4">
          <a href="index.php?page=merken&plant_id=<?=$r['id'];?>"><?=$r['naam'];?></a>            
        </div>
        <?php 
                }
            }
        ?>

      </div>
      <!-- /.row -->