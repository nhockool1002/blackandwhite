<div class="col-sm-10">
    <nav class="navbar navbar-default navbar-fnt navbar-backgrnd menu-primary showcase">
    <center><div class="nav-link active" href="#"><span>Sách</span></div></center>
  </nav>
  <div class="row showcases">
    <div class="col-sm-12 text-sm-center">
      <div class="card-deck-wrapper">
        <div class="card-deck">
                    <?php



                    if(isset($_GET['id'])){
                      $catid = $_GET['id'];
                      $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0 AND catid ='$catid'";
                    }
                    else{
                      $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0";
                    }
                    $obj = new Db();
                    $rows = $obj->select($sql);
                    $tongsp = $obj->getRowCount();
                    $limit = 16;
                    $ht = isset($_GET['trang']) ? $_GET['trang'] : 1;
                    $start = ($ht -1)*$limit;
                    $total_page = ceil($tongsp / $limit);
                    if(isset($_GET['id'])){
                      $catid = $_GET['id'];
                      $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0 AND catid ='$catid' ORDER BY bookid DESC LIMIT $start,$limit";
                    }
                    else{
                      $sql = "SELECT * FROM books INNER JOIN author ON books.author = author.authorid WHERE credits =0 ORDER BY bookid DESC LIMIT $start,$limit";
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
      <?php
      for ($i = 1; $i <= $total_page; $i++){
                      if ($i == $ht){
                          echo '<span>'.$i.'</span> | ';
                      }
                      else{
                        if(isset($_GET['danh-muc']) && isset($_GET['id'])){
                          $catid = $_GET['id'];
                          $dm = $_GET['danh-muc'];
                          echo '<a href="index.php?danh-muc='.$dm.'&id='.$catid.'&trang='.$i.'">'.$i.'</a> | ';
                        }else{
                          echo '<a href="index.php?trang='.$i.'">'.$i.'</a> | ';
                        }
                      }
                  }
       ?>

    </div>
  </div>
</div>
