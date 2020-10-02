# Nested sets

These examples are referenced by the article [Storing deep hierarchies in a database](https://medium.com/@bobbyjack/storing-deep-hierarchies-in-a-database-153c77f66756). They require a [MySQL](https://dev.mysql.com/) installation, although they should be easily portable to other relational database engines.

Run `setup.sql` first, with a command such as:

```
mysql -uuser -p < ./setup.sql
```

This will create a database named `nested_sets` and a few individual tables within that database. Once setup is complete, execute each query either with a similar command:

```
mysql -uuser -p nested_sets < ./query_1_get_country.sql
```

or, preferably, by copying+pasting individual commands into the command-line shell, for nicer output.
