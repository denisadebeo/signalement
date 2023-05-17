# signalement
 
rails new signalement --css=sass --javascript=esbuild --database=postgresql

Devise
Storage
Email

rails g model Company name:string adresse:string

rails g migration AddCompanyToUser

rails g model dossier titre:text categorie:string user:references status:string

rails g model etape dossier:references user:references commentaire:text