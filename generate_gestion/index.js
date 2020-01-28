var str = "";
var random_price = random_dispo = random_exemplaire = 0;
const fs = require('fs');

for(var i=1; i<=71; i++) {
  random_price = Math.floor(Math.random() * (40 - 3 + 1) + 3);
  random_dispo = Math.floor(Math.random() * (20 - 0 + 1) + 0);
  random_exemplaire = Math.floor(Math.random() * (30000 - 100 + 1) + 100);
  str += "<Stock lref=\"l"+i+"\">\n"+
    "\t<Prix>"+random_price+" eur</Prix>\n"+
    "\t<Disponibilite>"+random_dispo+"</Disponibilite>\n"+
    "\t<Exemplaires>"+random_exemplaire+"</Exemplaires>\n"+
  "</Stock>\n"
}

fs.writeFile("./res.xml", str, function(err) {
    if(err) {
        return console.log(err);
    }
    console.log("The file was saved!");
});
