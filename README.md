Statex
======

Simple statistics server, building:

```
mix deps.get
mix silverb.init rel
make release
./start.sh
```

Usage:

```
curl -d '{"cmd":"get_state"}' http://127.0.0.1:9868

{  
   "args":null,
   "cmd":"get_state",
   "ok":true,
   "result":{  
      "list":[  

      ],
      "stamp_now":1438196224817
   },
   "trx":null
}
```

```
curl -d '{"cmd":"set_state","args":{"app":"foo","host":"bar","ok":true,"info":""}}' http://127.0.0.1:9868

{  
   "args":{  
      "app":"foo",
      "host":"bar",
      "info":"",
      "ok":true
   },
   "cmd":"set_state",
   "ok":true,
   "result":null,
   "trx":null
}
```

```
curl -d '{"cmd":"get_state"}' http://127.0.0.1:9868

{  
   "args":null,
   "cmd":"get_state",
   "ok":true,
   "result":{  
      "list":[  
         {  
            "app":"foo",
            "host":"bar",
            "info":"",
            "ok":true,
            "stamp_updated":1438196382524
         }
      ],
      "stamp_now":1438196442411
   },
   "trx":null
}
```