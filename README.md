Statex
======

Simple statistics server. Configuration in ./config/config.exs. Building:

```
mix deps.get
mix silverb.init rel
make release
sudo ./start.sh
```

Usage:

```
curl -d '{"cmd":"get_state"}' -u login:password http://127.0.0.1:8888

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
curl -d '{"cmd":"set_state","args":{"app":"foo","host":"bar","ok":true,"info":"","data":123}}' -u login:password http://127.0.0.1:8888
curl -d '{"cmd":"get_state"}' -u login:password http://127.0.0.1:8888

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