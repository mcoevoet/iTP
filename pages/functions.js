var oldItem = null;
var oldMenu = null;
var timer = null;
 
/* Fonction appelee lors du mouseover sur le menu */
function mouseOverMenu(menu, idItem)
{
 /* on arrete le timer declenche lors d un onmouseout */
 if (timer!=null)
 {
    clearTimeout(timer);
    timer = null;
 }
 
 /* on masque le div vide */
 document.getElementById("itemVide").style.display = "none";
 
 /* si necessaire, on masque le sous-menu precedemmment affiche */
 if (oldItem!=null && oldItem!=idItem)
 {
    document.getElementById(oldItem).style.display = "none";
    oldItem = null;
 }
 
 /* on affiche le sous-menu idItem */
 document.getElementById(idItem).style.display = "block";
 
 /* on redonne le style par defaut de l ancien menu selectionne */
 if (oldMenu!=null && oldMenu!=menu)
 {
    oldMenu.className = "styleOutMenu";
    oldMenu = null;
 }
 
 /* style du menu selectionne */
 menu.className = "styleOverMenu";
 
 
 /* memorisation du choix de l utilisateur */
 oldItem = idItem;
 oldMenu = menu;
}
 
/* Fonction appel�e lors du mouseover sur un element du sous-menu */
/* On arrete le chrono */
function mouseOverItem()
{
 if (timer!=null)
 {
    clearTimeout(timer);
    timer = null;
 }
}
 
/* Fonction appelee a la fin du delai indique dans la methode setTimeout */
/* On masque les sous-menu et on redonne aux elements leur parametres par defaut */
function mouseOutT()
{
 if (oldItem!=null)
 {
    document.getElementById(oldItem).style.display = "none";
    oldItem = null;
 }
 
 if (oldMenu!=null)
 {
    oldMenu.className = "styleOutMenu";
    oldMenu = null;
 }
 
 document.getElementById("itemVide").style.display = "block";
 
 timer = null;
}
 
/* declenchement d un timer lors du mouseout sur les elements du menu ou des sous-menus */
/* le timer est arrete si un evenement onmouseover a lieu */
/* 1000=1sec, 60000=1min, 300000=5min*/
function mouseOut()
{
  if (timer==null)
  {
    timer = setTimeout("mouseOutT()","60000");
  }
}