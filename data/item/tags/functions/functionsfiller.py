"""
Small python script to fill function tag files quicker.
"""
for i in range(1,5+1):
    with open(f'{str(i)}.json','w+',encoding='utf-8') as json:
        json.writelines(('{',f'''
    "replace":false,
    "values":[
        "game:default/game/upgrader/yellow/buy/{str(i)}"
    ]
''','}'))