# Weather App

Este projeto é uma aplicação simples que utiliza o Flask para consultar informações de clima de diferentes cidades, acessando a API do OpenWeatherMap. O frontend é um arquivo HTML simples, com a possibilidade de selecionar a cidade e visualizar as condições climáticas, como temperatura, umidade e descrição do tempo.

# Descrição do Código

A aplicação consiste em um backend em Python utilizando o Flask para criar duas rotas principais:

- **`/weather`**: Esta rota aceita uma requisição GET com um parâmetro `city` e consulta o clima dessa cidade usando a API do OpenWeatherMap.
- **`/`**: A rota raiz retorna a página HTML onde o usuário pode selecionar uma cidade e consultar o clima.

O código também utiliza o pacote `Flask-CORS` para permitir que a aplicação frontend, que pode estar hospedada em um servidor diferente, faça requisições à API sem problemas de CORS. A variável `OPENWEATHERMAP_API_KEY` é carregada a partir de um arquivo `.env` para manter a chave da API segura.

# Requisitos

Antes de rodar a aplicação, você precisará ter os seguintes pacotes instalados:

- `Flask`
- `Flask-CORS`
- `requests`
- `uWSGI`
- `python-dotenv`

Esses pacotes estão listados no arquivo `requirements.txt`, e você pode instalá-los executando o comando:

```bash
pip install -r requirements.txt
```

Além disso, você precisará de uma chave de API do OpenWeatherMap. Acesse [https://openweathermap.org/api](https://openweathermap.org/api) e faça o cadastro para obter a chave de API.

# Como Obter a API Key

Você precisa de uma chave de API válida do OpenWeatherMap para que a aplicação funcione. Para obter a chave, faça o seguinte:

1. Acesse [OpenWeatherMap](https://openweathermap.org/api) e faça o cadastro.
2. Após o cadastro, você poderá gerar sua chave de API.
3. Substitua a variável `OPENWEATHERMAP_API_KEY` no arquivo `.env` pela chave que você obteve.

# Configurando o Arquivo `.env`

O arquivo `.env` é necessário para armazenar a chave da API de maneira segura. Para criar esse arquivo, siga as etapas abaixo:

1. Crie um arquivo chamado `.env` no diretório raiz do projeto.
2. No arquivo `.env`, adicione as seguintes variáveis de ambiente:

```env
OPENWEATHERMAP_API_URL=http://api.openweathermap.org/data/2.5/weather
OPENWEATHERMAP_API_KEY=Sua_Chave_De_API_Aqui
```

Substitua `Sua_Chave_De_API_Aqui` pela chave de API que você obteve no OpenWeatherMap.

**Observação**: Não compartilhe o arquivo `.env` publicamente, pois ele contém informações sensíveis.

# Rodando a aplicação com docker
## Criando a Imagem Docker

Para criar a imagem Docker da aplicação, utilize o seguinte comando:

```bash
docker build -t weather-app .
```

Este comando cria a imagem Docker a partir do `Dockerfile` presente no diretório atual e a marca com o nome `weather-app`.

## Rodando o Container Docker

Depois de criar a imagem, você pode rodar o container com o seguinte comando:

```bash
docker run -p 5005:5005 weather-app
```

Isso irá iniciar o container e mapear a porta `5005` do container para a porta `5005` da sua máquina local. A aplicação estará acessível no endereço `http://localhost:5005`.

# Rodando a Aplicação Localmente com Python

Se você preferir rodar a aplicação localmente sem usar Docker, pode fazer isso com o seguinte comando:

```bash
python3 app.py
```

Isso irá iniciar o servidor Flask localmente na porta `5005`, e a aplicação estará acessível no endereço `http://localhost:5005`.


# Testando a Aplicação

1. Certifique-se de que o arquivo `.env` está configurado corretamente e que as dependências foram instaladas.
2. Inicie o servidor localmente ou no Docker.
3. Acesse o endereço `http://localhost:5005` no navegador.
4. Selecione uma cidade no formulário e clique em "Get Weather" para ver as informações do clima.

# Conclusão

Este é um exemplo simples de como consumir uma API externa e exibir os resultados de maneira dinâmica em uma aplicação web. Você pode expandir essa aplicação, adicionando mais funcionalidades como previsão do tempo, diferentes unidades de medida e mais.

Se tiver algum problema ou precisar de ajuda, não hesite em abrir uma issue ou me contactar.