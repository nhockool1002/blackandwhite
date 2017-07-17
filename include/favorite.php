<hr>
<p class="display-4 text-sm-center">Sách nổi bật</p>
<hr>
<div class="container-fluid favorite">
  <div class="row">
      <div class="col-xs-12 text-sm-center">
        <div class="card-deck-wrapper">
          <div class="card-deck">
            <?php
            $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE spec = 1";
            $obj = new Db();
            $rows = $obj->select($sql);
            foreach ($rows as $row) {
            ?>
            <div class="card col-sm-2">
              <img class="card-img-top" src="upload/<?php echo $row['filename'];?>" alt="<?php echo $row['des'];?>" width="150px">
              <div class="card-block">
                <h4 class="card-title"><?php echo $row['bookname'];?></h4>
                <p class="card-text"><?php echo $row['des'];?></p>
                <p class="card-text"><small class="text-muted"><?php echo $row['authorname'];?></small></p>
              </div>
            </div>
            <?php } ?>

          </div>
        </div>
      </div>
  </div>
</div>
<hr>
