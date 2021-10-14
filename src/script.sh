#!/bin/bash
curl https://api.warframe.market/v1/items | jq ".[]|{payload:{items:.[]|map({id:.id,item_name: .item_name})}}" > items.json 
if [ $? -eq 0 ]; then
    echo "JSON CREADO CON EXITO"
else
    echo "ERROR AL CREAR EL JSON"
fi