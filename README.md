# cek_khodam
Testing bahasa pemrograman Moonscript dan web framework Lapis

## Prerequisites
- [Lua](https://www.lua.org/download.html)
- [LuaRocks](https://github.com/luarocks/luarocks/wiki/Download)
- [OpenResty](https://openresty.org/en/download.html)

## Instalation
```sh
$ luarocks install moonscript   
$ luarocks install lapis
$ git clone --depth=1 https://github.com/kkkfasya/cek_khodam.git
```
## Usage
```sh
$ cd cek_khodam
$ moonc .
$ lapis server
# untuk development buka di http://localhost:6969
```

> Bonus: GET/POST Request ke /what-khodam akan me return json { "khodam": "[nama khodam]" }
