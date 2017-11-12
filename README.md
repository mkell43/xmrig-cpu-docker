# xmrig-cpu-docker
----
A docker container to easily deploy [xmrig](https://github.com/xmrig/xmrig).

## Tags

`latest` - Uses known, tested, Alpine image and xmrig versions.
`alpine-latest` - Uses the latest Alpine image.
`xmrig-latest` - Uses the latest version of xmrig from the master branch.

## Usage
`docker run mkell43/xmrig-cpu -o miningpool.url:port -u username -p password`

* `-o` - Your mining pool's url and port. *check with your mining pool for how to set this*
* `-u` - Is your username.  *check with your mining pool for how to set this*
* `-p` - This is the password for your account with your mining pool.  This is frequently just `-p x`.  *check with your mining pool for how to set this*

The list of options to set for xmrig is insaaaaaannnnnneeeeeeeeee check it out in their [README](https://github.com/xmrig/xmrig#usage) with some more in depth cpu options in their [WIKI](https://github.com/xmrig/xmrig/wiki/Threads).

## How Do I Get Started With Monero?

1. Start at [GetMonero.org](https://getmonero.org/).
2. Create a wallet at [MyMonero](https://mymonero.com/) or locally with the [Monero GUI Wallet](https://getmonero.org/downloads/).
3. Buy some Monero (XMR) at [HitBTC](https://hitbtc.com/?ref_id=5a00b3cb40b51)*.
4. Find a Monero mining pool at [MoneroPools](http://moneropools.com/) or use [MinerGate](https://minergate.com/a/2a9867be1a281fb8)** which makes getting started mining easy.
----
\* The link used was an affiliate link.  You can go there without the affiliate code via this link. -> [HitBTC](https://hitbtc.com/)

\** The link used was was an affiliate link.  You can go there without the affiliate code via this link. -> [MinerGate](https://minergate.com/)

## Don't Forget The Xmrig Devs...

Send them some donations for their hard work.

* XMR: `48edfHu7V9Z84YzzMa6fUueoELZ9ZRXq9VetWzYGzKt52XU5xvqgzYnDK9URnRoJMk1j8nLwEVsaSWJ4fhdUyZijBGUicoD`
* BTC: `1P7ujsXeX7GxQwHNnJsRMgAdNkFZmNVqJT`
