config = require "lapis.config"

config "development", ->
  server "nginx"
  code_cache "off"
  num_workers "1"
  port 6969

config "production", ->
  server "nginx"
  code_cache "on"
  num_workers 4
  port 80

config { "development", "production" }, ->
  session_name "cek_khodam"
