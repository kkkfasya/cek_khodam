import respond_to from require "lapis.application"
lapis = require "lapis"

_khodam_table = ->
  i = 1
  t = {}
  f = assert io.open("./static/khodam.txt", "r")
  content = true

  while content
    content = f\read("*l")
    t[i] = content
    i += 1

  t

get_khodam = ->
  math.randomseed(os.time!)
  t = _khodam_table!
  khodam = t[math.random(1, #t)]

  khodam -- fucking implicit return


class extends lapis.Application
  @enable "etlua" -- NOTE: maybe if i'm crazy enough i'll rewrite the views in moonscript
  layout: "layout"

  [index: "/"]: respond_to {
    GET: =>
      @nama = @GET.nama
      @khodam = get_khodam!
      if @nama then render: "khodam", status: 200 else render: "index", status: 200

    POST: =>
      {
        json: {
          msg: "Don't do POST request here you dumbfuck"
        }
      }, status: 405
  }

  [what_khodam: "/what-khodam"]: =>
    {
      json: {
        khodam: get_khodam!
      }
    }

  handle_404: =>
    render: "404", status: 404
