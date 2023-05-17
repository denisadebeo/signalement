# signalement
 
rails new signalement --css=sass --javascript=esbuild --database=postgresql

Devise
Storage
Email

rails g scaffold Company name:string adresse:string

rails g migration AddCompanyToUser

rails g scaffold Dossier titre:string categorie:string user:references status:string --skip

rails g scaffold Etape dossier:references user:references commentaire:text



=begin


=end