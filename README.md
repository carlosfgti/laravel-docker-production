# Laravel Dockerfile Production (Laravel Octane + Swoole)

Inspirado neste [setup](https://github.com/especializati/setup-docker-laravel/tree/production) que é mais completo.

Clone o projeto
```sh
git clone https://github.com/carlosfgti/laravel-docker-production
```

Crie a Imagem do Projeto
```sh
docker build -t laravelprod -f Dockerfile.prod .
```

Teste a imagem que acabou de criar
```sh
docker run -p 80:80 laravelprod
```

Acesse o projeto [http://localhost](http://localhost)
