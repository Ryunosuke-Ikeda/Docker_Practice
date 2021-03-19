# python3.7のイメージ
FROM  python:3.7

# ビルドする際のディレクトリ作成

RUN mkdir /app

# workdir 作業する場所
WORKDIR /app

# requirements.txt 使用するライブラリの記入
ADD requirements.txt /app

# ADD: 圧縮ファイルを自分で解凍　リモートからファイルが追加できる。
# COPY: 圧縮ファイルが自動解凍されない　リモートから追加できない.


#requirements.txtのファイルをインストール
RUN pip install -r requirements.txt

ADD . /app/