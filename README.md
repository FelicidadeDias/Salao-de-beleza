# Modelo de Salão de Beleza & Spa

Website demonstrativo e adaptável para salões de beleza, centros de estética, beauty lounges e spas.

## O que está incluído

- Página inicial com apresentação do espaço e chamadas para acção.
- Categorias: cabelo, unhas, maquilhagem, estética e spa.
- Catálogo de serviços com filtros e pesquisa.
- Loja de produtos com categorias, pesquisa e sacola.
- Pedidos de produtos e solicitações de marcação preparados para WhatsApp.
- Secções sobre o salão, testemunhos demonstrativos e contactos.
- Layout responsivo para telemóveis, tablets e computadores.
- Estrutura estática: não exige instalação de dependências nem base de dados.

## Ver o site

Depois de activar GitHub Pages nas definições do repositório, a página poderá ficar disponível em:

https://felicidadedias.github.io/Salao-de-beleza/

A publicação pode demorar alguns minutos após a activação.

## Personalização obrigatória antes de usar com um salão real

Abra `index.html` e procure o objecto `CONFIG`, no final do ficheiro:

```js
const CONFIG={
  brand:'Maison Belle',
  whatsapp:'',
  phone:'+244 000 000 000',
  address:'Adicionar endereço do salão',
  hours:'Segunda a Sábado · 08h às 18h',
  instagram:'@seusalao',
  currency:'Kz'
};
```

Substitua o nome, número WhatsApp (apenas dígitos, incluindo indicativo do país), telefone, endereço, horário e Instagram pelos dados oficiais do estabelecimento.

Edite também as listas `services` e `products` para actualizar nomes, descrições, categorias e preços. Substitua as imagens demonstrativas por fotografias autorizadas do salão, da equipa, dos trabalhos realizados e dos produtos comercializados.

## Funcionamento dos pedidos

- O formulário de marcação prepara uma mensagem com os dados do cliente e do serviço e abre o WhatsApp do salão.
- A sacola permite seleccionar vários produtos e enviar o pedido numa única mensagem.
- O envio não confirma automaticamente uma marcação nem efectua pagamento. O salão deve confirmar disponibilidade, preço final, entrega/recolha e condições de pagamento pelo WhatsApp.
- O catálogo e os pedidos funcionam no navegador. Não existe painel administrativo, stock sincronizado, base de dados ou checkout com pagamento online nesta versão.

## Conteúdo demonstrativo

“Maison Belle”, serviços, produtos, preços, fotografias e testemunhos são exemplos de apresentação. Não representam um salão real nem avaliações verificadas. Devem ser substituídos por informação verdadeira antes de divulgar o site como oficial.

## Tecnologias

HTML, CSS e JavaScript nativos; imagens de demonstração carregadas do Unsplash; Google Fonts. Não utiliza frameworks nem backend.

---

Modelo criado por **Fely e Amigos | Soluções Digitais**.
