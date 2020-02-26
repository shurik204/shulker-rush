for i in range(1,28):
    with open(f'check_{str(i)}.json','w+',encoding='utf-8') as json:
        json.writelines(('{',f'''
    "replace":false,
    "values":[
        "game:default/game/shop/check/{str(i)}"
    ]
''','}'))