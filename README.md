# apt-mirror-docker
apt-mirrorのdockerコンテナ

起動するとapt-mirrorをcron実行する

## Description
Docker上でapt-mirrorを実行するコンテナ
コンテナを起動するとcronが起動し、スケジュールされた時間にapt-mirrorを実行します。

ディレクトリ構成
<pre>
.
├── Dockerfile    # debianベースのDockerfile
├── README.md
├── cron.d
│   └── apt-mirror          # apt-mirrorユーザのcronファイル
├── mirror.list.d           # apt-mirror設定ファイルのテンプレート群
│   ├── raspbian.list       # Raspberry piリポジトリミラー用
│   └── ubuntu_xenial_amd64.list  # ubuntu 16.04 amd64リポジトリミラー用
└── run_apt-mirror.sh       # コンテナ起動時に実行されるスクリプト
</pre>

## Requirement
<pre>
#依存ソフトウェア
docker  

#依存コンテナ
debian:9-slim
</pre>

## Usage
<pre>
#コンテナのプル
$ docker pull mshrtsr/apt-mirror:latest

#(ビルド)
$ docker build . yourcontainername:latest

#コンテナ起動
$ docker run -it mshrtsr/apt-mirror:latest

#Raspberry Pi向けにミラーリポジトリを作成する場合
$ docker run -it -v /your_configfile_dir/raspbian.list:/etc/apt/mirror.list mshrtsr/apt-mirror
</pre>
