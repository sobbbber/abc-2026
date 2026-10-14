import random

"""secret = ['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue',
          'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import',
          'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']

describe = ['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue',
          'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import',
          'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']"""
"""_tupl = [('False', 'Логмическое значение'), ('None', 'Пустой')]

_tupl = (('False', 'Логмическое значение'), ('None', 'Пустой'))"""
#                      0                         1
_dict = {'False': 'Логмическое значение', 'None': 'Пустой'}
keys = list(_dict.keys())
ind = random.randint(0, len(keys) - 1)
secret = keys[ind]

mask = [' * '] * len(secret)
print(mask)

while True:
    # 1. Вывести описание
    print(_dict[secret])
    # 2. Вывести шаблон слова
    for val in mask:
        print(val, end="")
    # 3. Сделать предложение на ввод буквы
    letter = input("\nВведите букву: ")
    # 4. Проверка буквы (если совпала, шаблон перерисовать)
    for ind, val in enumerate(secret):
        if val.upper() == letter.upper():
            mask[ind] = letter
    if " * " not in mask:
        print(secret)
        break









