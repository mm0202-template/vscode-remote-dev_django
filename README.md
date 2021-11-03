# vscode-remote-dev-container
Template of vscode remote development container

## dev container setup
### Remote Container 拡張機能のインストール

Remote Containerをインストールしていない場合は、以下のページの「「Dev Container」用の拡張機能のインストール」を参照してください。

[「Dev Container」用の拡張機能のインストール | 【VS Code】Remote Development テンプレートを作ってみました！](https://mlog.wlaboratory.com/entry/category/release/template/template-vscode-remote-dev-container#Dev-Container%E7%94%A8%E3%81%AE%E6%8B%A1%E5%BC%B5%E6%A9%9F%E8%83%BD%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)


### 表示名の設定

`.devcontainer/devcontainer.json` の `name` フィールドに、適当な名称を設定してください。


### その他

その他の調整は以下のページを参照してください。

[【VS Code】Remote Development テンプレートを作ってみました！](https://mlog.wlaboratory.com/entry/category/release/template/template-vscode-remote-dev-container)


## start dev container

コマンドパレットから`Remote-Containers: Reopen in Container`を選択


## create project

```shell
django-admin startproject [project_name] .
```


## add DB access setting

`[project_name]/settings.py`の`DATABASES`を以下のように置き換えてください。

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```

## start dev server

```shell
python manage.py runserver 0:8000
```


## check page

[http://localhost:8000](http://localhost:8000)を開いて、以下のように表示されれば設定完了です。

![](https://cdn-ak.f.st-hatena.com/images/fotolife/h/hiro0164/20211103/20211103145353.png)


## 注意事項

パスワードがべた書きなので、必要に合わせて.envファイルなどを利用してください。

* docker-compose.yml - POSTGRES_PASSWORD
* [project_name]/settings.py - DATABESES - PASSWORD
