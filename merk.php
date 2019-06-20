<?php
    $stmt = $conn->prepare("SELECT * FROM plant_log WHERE merk_id = ". intval($_GET['merk_id'])); $stmt->execute();
    $row = $stmt->fetchAll();
    if(count($row) == 0){
        header('Location: index.php');
    }
?>
 <!-- Portfolio Item Heading -->
 <h1 class="my-4" style="padding-top:40px;">Alle merken voor: "<?php echo $row[0]['naam'];?>"
        <small></small>
      </h1>
      <!-- Related Projects Row -->
      <h3 class="my-4"></h3>
      <div class="row">
      <?php
            
            if(count($row) == 0){
                echo '<div class="col-md-3 col-sm-6 mb-4">';
                echo '<p><b>Geen</b> resutaten gevonden!</p>';
                echo '</div>';
            } else {
                foreach($row as $r){
        ?>
        <div class="col-md-3 col-sm-6 mb-4">
          <p><a href="index.php?page=merk_detail&log_id=<?php echo $r['id'];?>"><?=$r['naam'];?></a> <?=$r['beschrijving'];?></p>
             
        </div>
        <?php 
                }
            }
        ?>
      </div>
      <!-- /.row -->