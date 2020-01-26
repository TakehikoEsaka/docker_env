docker run -v `pwd`:/app -p 9000:9000 --name vue_app -it -d vue_app_image
# -v : マウント設定 ('pwd'は今のディレクトリを取得するコマンド)
# -it : インタラクティブモードで起動（シェルを起動する）という意味．
