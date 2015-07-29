Statex
======

Simple statistics server, building:

```
mix deps.get
mix silverb.init rel
make release
sudo ./start.sh
```

Usage:

```
curl -d '{"cmd":"get_state"}' http://127.0.0.1

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
curl -d '{"cmd":"set_state","args":{"app":"foo","host":"bar","ok":true,"info":"","data":123}}' http://127.0.0.1
curl -d '{"cmd":"get_state"}' http://127.0.0.1

{  
   "args":null,
   "cmd":"get_state",
   "ok":true,
   "result":{  
      "list":[  
         {  
            "app":"foo",
            "data":123,
            "host":"bar",
            "info":"",
            "ok":true,
            "stamp_updated":1438198355445
         }
      ],
      "stamp_now":1438198372789
   },
   "trx":null
}
```