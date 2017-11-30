<h1>Users</h1><hr>
<table class="table table-sm">
  <thead>
    <tr>
	  <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Username</th>
      <th scope="col">Status</th>
      <th scope="col">#</th>
    </tr>
  </thead>
  
<?php $i = 1; foreach($viewmodel as $item) : ?>
	  <tbody>
    <tr>
      <td><?php echo $i; $i++ ?></td>
      <td><?php echo $item['user_name']; ?></td>
      <td><?php echo $item['user_email']; ?></td>
      <td><?php echo $item['username']; ?></td>
      <td><?php echo $item['status']; ?></td>
      <td></a><button type="button" class="btn btn-danger btn-sm" name"xxx" onclick="myFunction()" >Delete</button> <a href="<?php echo ROOT_URL; ?>users/edit/<?php echo $item['user_id']; ?>"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
       <!--  <a style="font-size: 12px;" >Edit</a><br><a style="font-size: 12px;" href="">Delete</a> <?php //echo $item['user_id']; ?> -->

      </td>
    </tr>

<?php endforeach; ?>
  </tbody>
</table>

<p style="font-size: 12px;" class="text-right">STATUS 0 = off 1 = superadmin 2 = admin 3 = editor</p>

<a class="btn btn-primary" href="<?php echo ROOT_URL; ?>users/register" role="button">Add user</a>