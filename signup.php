<?php session_start() ?>

<div class="container-fluid">
	<form action="essaie/envoimail.php" id="signup-frm">
		<div class="form-group">
			<label for="" class="control-label">Prénoms</label>
			<input type="text" name="first_name" required="" class="form-control">
		</div>

		<div class="form-group">
			<label for="" class="control-label">Nom</label>
			<input type="text" name="last_name" required="" class="form-control">
		</div>

		<div class="form-group">
			<label for="" class="control-label">Contact</label>
			<input type="text" name="mobile" required="" class="form-control">
		</div>

		<div class="form-group">
			<label for="" class="control-label">Adresse</label>
			<textarea cols="30" rows="3" name="address" required="" class="form-control"></textarea>
		</div>

		<div class="form-group">
			<label for="" class="control-label">Email</label>
			<input type="email" name="email" required="" class="form-control">
		</div>
		
		<div class="form-group">
			<label for="" class="control-label">Mot de passe</label>
			<input type="password" name="password" required="" class="form-control">
		</div>
		<button class="button btn btn-info btn-sm">Valider</button>
	</form>
</div>

<style>
	#uni_modal .modal-footer{
		display:none;
	}
</style>

<script>
	$('#signup-frm').submit(function(e){
		e.preventDefault()
		$('#signup-frm button[type="submit"]').attr('disabled',true).html('Saving...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'admin/ajax.php?action=signup',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#signup-frm button[type="submit"]').removeAttr('disabled').html('Create');

			},
			success:function(resp){
				if(resp == 1){
					location.href ='<?php echo isset($_GET['redirect']) ? $_GET['redirect'] : 'index.php?page=home' ?>';
				}else{
					$('#signup-frm').prepend('<div class="alert alert-danger">Ce mail existe déjà.</div>')
					$('#signup-frm button[type="submit"]').removeAttr('disabled').html('Create');
				}
			}
		})
	})
</script>