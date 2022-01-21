# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Comment.delete_all
Produto.delete_all

5.times do |i|
    produto = Produto.create(codigo: "2", nome: "yyyyyyyyy", descricao: "yyyyyyyyyyyyyyyyy", classificacao: 0, status: "Public", categoria: 2, valor: 100)
    10.times do |t|
     comentario = Comment.create(commenter: "ffffffff", classificacao: 1, produto_id: produto.id)   
    end
end

