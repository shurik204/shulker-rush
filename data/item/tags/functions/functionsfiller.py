for i in range(1,6):
    with open(f'bupgrader_buy_{str(i)}.json','w+',encoding='utf-8') as json:
        json.writelines(('{',f'''
    "replace":false,
    "values":[
        "game:default/game/upgrader/blue/buy/{str(i)}"
    ]
''','}'))