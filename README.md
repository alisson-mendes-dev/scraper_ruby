🕸️ Scraper de Sites em Ruby
Um projeto simples e funcional de Web Scraping utilizando Ruby, Sinatra, Nokogiri e HTTParty. Com esta ferramenta, é possível extrair conteúdos específicos de páginas web através de seletores CSS.

🚀 Como funciona
O projeto utiliza um formulário web onde o usuário insere a URL do site alvo e a classe CSS do elemento que deseja capturar. O backend processa a requisição, realiza a raspagem e retorna o conteúdo formatado em um painel estilo "Terminal Hacker".

🛠️ Tecnologias Utilizadas
Ruby: Linguagem principal.

Sinatra: Framework web minimalista.

Nokogiri: Parser de HTML/XML.

HTTParty: Cliente HTTP para requisições.

CSS: Estilização temática personalizada.

⚙️ Pré-requisitos
Certifique-se de ter o Ruby instalado em sua máquina e execute:

Bash
gem install sinatra httparty nokogiri byebug
🚀 Como rodar o projeto
Clone este repositório:

Bash
git clone [https://github.com/alisson-mendes-dev/scraper_ruby.git]
Entre na pasta do projeto:

Bash
cd learnScrapingRuby
Inicie o servidor:

Bash
ruby app.rb
Acesse no seu navegador: http://localhost:4567

💡 Como usar
Insira a URL completa (ex: https://g1.globo.com).

Digite a classe CSS do elemento desejado (ex: .feed-post-link).

Clique em "Extrair Conteúdo" e veja o resultado na caixa de terminal.

Dicas de Aprendizado
Para entender como essa comunicação entre o seu formulário e o servidor funciona, observe o fluxo de dados no diagrama abaixo:

📝 Observações
Este é um projeto simples. Sites que dependem fortemente de JavaScript (como o YouTube) podem não retornar o conteúdo esperado com este scraper simples.

Respeite os termos de serviço e o robots.txt dos sites que você pretende explorar.