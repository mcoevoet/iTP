<?php
// Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
if (isset($_FILES['new_image']) AND $_FILES['new_image']['error'] == 0)
{
        // Testons si le fichier n'est pas trop gros
        if ($_FILES['new_image']['size'] <= 1000000)
        {
                // Testons si l'extension est autorisée
                $infosfichier = pathinfo($_FILES['new_image']['name']);
                $extension_upload = $infosfichier['extension'];
                $extensions_autorisees = array('jpg', 'JPG', 'jpeg', 'gif', 'png');
                if (in_array($extension_upload, $extensions_autorisees))
                {
                        // On peut valider le fichier et le stocker définitivement
                        move_uploaded_file($_FILES['new_image']['tmp_name'], 'dwld_files/machine_images/' . basename($_FILES['new_image']['name']));
                        //echo "L'envoi a bien &eacute;t&eacute; effectu&eacute; !";
                        $image_name = $_FILES['new_image']['name'];
                        //echo $_FILES['new_image']['name'];
                }
        }
}
?>