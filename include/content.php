<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Sách</span></div></center>
  </nav>
  <div class="row showcases">
    <div class="col-sm-12 text-sm-center">
      <div class="card-deck-wrapper">
        <div class="card-deck">
          <?php
            if(!isset($_GET['id'])){
            $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0";
            }
            else{
              $id = $_GET['id'];
              $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0 AND catid='$id'";
            }
            $obj = new Db();
            $rows = $obj->select($sql);
            foreach ($rows as $row) {
          ?>
          <div class="col-sm-3">
            <div class="card bookoject">
            <a href="index.php?page=xem-sach&idbook=<?php echo $row['bookid']; ?>"><img class="card-img-top" src="upload/<?php echo $row['filename'];?>" alt="<?php echo $row['des'];?>" width="150px"></a>
              <div class="card-block">
                <a href="index.php?page=xem-sach&idbook=<?php echo $row['bookid']; ?>"><h4 class="card-title"><?php echo $row['bookname'];?></h4></a>
                <p class="card-text"><small class="text-muted"><?php echo $row['authorname'];?></small></p>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
</div>
