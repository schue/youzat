# Database
pg = require('pg')
conString = 'postgres://youzat:youzdev@localhost/youzat'

# Express server
express = require('express')
app = express()

app.use('/', express.static(__dirname + '/../client'))

pg.connect conString, (err, client, done) ->
    # Fetch a list of Zats 
    app.get '/zats/:lat/:long', (req, res) ->
        if err
            res.send
                errMsg: "Well, that didn't work",
                err: err
        else
            client.query 'SELECT * FROM zat', (err, result) ->
                res.send
                    lat:req.params.lat
                    long:req.params.long
                    zats: result.rows

server = app.listen 3000, ->
    host = server.address().address
    port = server.address().port
    console.log('Listening on %s:%s', host, port)

return server
