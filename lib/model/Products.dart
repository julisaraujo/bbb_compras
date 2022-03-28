
class Products {

  int wallet = 3000;

  List productBasket = [];

  listLength(){
    return productBasket.length;
  }

  removeProductBasket(dynamic product){
    productBasket.remove(product);
  }

  addProductBasket(dynamic product){
    productBasket.add(product);
  }

  addWallet (int productvalue){
    wallet = wallet - productvalue;
  }

  removeWallet (int productvalue){
    wallet = wallet + productvalue;
  }

  List products = [
    {
      "nome": "Alface",
      "descrição": "maço(s)",
      "imagem": "assets/produtos/alface.png",
      "valor": 18,
      "quantidade": 0,
      "disponivel": 3,
      "grupo": "Hortifruti"
    },
    {
      "nome": "Arroz",
      "descrição": "pacote(s) de 1kg",
      "imagem": "assets/produtos/arroz.jpg",
      "valor": 32,
      "quantidade": 0,
      "disponivel": 4,
      "grupo": "Diversos"
    },
    {
      "nome": "Atum",
      "descrição": "lata(s)",
      "imagem": "assets/produtos/atum.png",
      "valor": 10,
      "quantidade": 0,
      "disponivel": 5,
      "grupo": "Enlatados"
    },
    {
      "nome": "Açucar",
      "descrição": "pacote(s) de 1kg",
      "imagem": "assets/produtos/açucar.png",
      "valor": 20,
      "quantidade": 0,
      "disponivel": 3,
      "grupo": "Diversos"
    },
    {
      "nome": "Bife de alcatra",
      "descrição": "bandeja(s) de 500g",
      "imagem": "assets/produtos/bifealcatra.png",
      "valor": 50,
      "quantidade": 0,
      "disponivel": 6,
      "grupo": "Carnes"
    },
    {
      "nome": "Carne moída",
      "descrição": "bandeja(s) de 500g",
      "imagem": "assets/produtos/carnemoida.png",
      "valor": 40,
      "quantidade": 0,
      "disponivel": 2,
      "grupo": "Carnes"
    },
    {
      "nome": "Cebola",
      "descrição": "kg",
      "imagem": "assets/produtos/cebola.png",
      "valor": 10,
      "quantidade": 0,
      "disponivel": 5,
      "grupo": "Hortifruti"
    },
    {
      "nome": "Coxa de frango",
      "descrição": "bandeja(s) de 500g",
      "imagem": "assets/produtos/coxadefrango.jpg",
      "valor": 35,
      "quantidade": 0,
      "disponivel": 7,
      "grupo": "Carnes"
    },
    {
      "nome": "Creme de leite",
      "descrição": "lata(s)",
      "imagem": "assets/produtos/cremedeleite.jpg",
      "valor": 17,
      "quantidade": 0,
      "disponivel": 8,
      "grupo": "Enlatados"
    },
    {
      "nome": "Ervilha",
      "descrição": "lata(s)",
      "imagem": "assets/produtos/ervilha.png",
      "valor": 8,
      "quantidade": 0,
      "disponivel": 4,
      "grupo": "Enlatados"
    },
    {
      "nome": "Feijão",
      "descrição": "pacote(s) de 1kg",
      "imagem": "assets/produtos/feijao.png",
      "valor": 23,
      "quantidade": 0,
      "disponivel": 2,
      "grupo": "Diversos"
    },
    {
      "nome": "Filé",
      "descrição": "bandeja(s) de 500g",
      "imagem": "assets/produtos/file.jpg",
      "valor": 59,
      "quantidade": 0,
      "disponivel": 2,
      "grupo": "Carnes"
    },
    {
      "nome": "Leite de coco",
      "descrição": "garrafa(s) de 200ml",
      "imagem": "assets/produtos/leitedecoco.png",
      "valor": 5,
      "quantidade": 0,
      "disponivel": 7,
      "grupo": "Diversos"
    },
    {
      "nome": "Linguiça",
      "descrição": "kg",
      "imagem": "assets/produtos/linguiça.jpg",
      "valor": 35,
      "quantidade": 0,
      "disponivel": 8,
      "grupo": "Carnes"
    },
    {
      "nome": "Macarrão",
      "descrição": "pacote(s) de 500g",
      "imagem": "assets/produtos/macarrao.jpg",
      "valor": 13,
      "quantidade": 0,
      "disponivel": 3,
      "grupo": "Massas"
    },
    {
      "nome": "Milho",
      "descrição": "espiga(s)",
      "imagem": "assets/produtos/milho.png",
      "valor": 8,
      "quantidade": 0,
      "disponivel": 5,
      "grupo": "Hortifruti"
    },
    {
      "nome": "Miojo",
      "descrição": "pacote(s)",
      "imagem": "assets/produtos/miojo.jpg",
      "valor": 5,
      "quantidade": 0,
      "disponivel": 10,
      "grupo": "Massas"
    },
    {
      "nome": "Peito de frango",
      "descrição": "bandeja(s) de 500g",
      "imagem": "assets/produtos/peitodefrango.jpg",
      "valor": 23,
      "quantidade": 0,
      "disponivel": 5,
      "grupo": "Carnes"
    },
    {
      "nome": "Rucula",
      "descrição": "maço(s)",
      "imagem": "assets/produtos/rucula.png",
      "valor": 7,
      "quantidade": 0,
      "disponivel": 6,
      "grupo": "Hortifruti"
    },
    {
      "nome": "Salsicha",
      "descrição": "lata(s)",
      "imagem": "assets/produtos/salsicha.png",
      "valor": 8,
      "quantidade": 0,
      "disponivel": 5,
      "grupo": "Enlatados"
    },
    {
      "nome": "Seleta de legumes",
      "descrição": "lata(s)",
      "imagem": "assets/produtos/seleta.png",
      "valor": 11,
      "quantidade": 0,
      "disponivel": 4,
      "grupo": "Enlatados"
    },
    {
      "nome": "Suco de uva",
      "descrição": "garrafa(s) de 1l",
      "imagem": "assets/produtos/sucodeuva.png",
      "valor": 18,
      "quantidade": 0,
      "disponivel": 6,
      "grupo": "Diversos"
    },
    {
      "nome": "Tomate",
      "descrição": "kg",
      "imagem": "assets/produtos/tomate.png",
      "valor": 29,
      "quantidade": 0,
      "disponivel": 7,
      "grupo": "Hortifruti"
    }
  ];
}