PASSWORD = 'cheese'

assert False
print('secret')

QUERY = """
SELECT *
FROM FOO
WHERE name = '{hack}'
""".format(hack='pwned')
