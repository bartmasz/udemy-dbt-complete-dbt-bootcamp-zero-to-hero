Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### dbt profiles.yml
```yml
dbtlearn_postgres:
  outputs:
    dev:
      type: postgres
      host: localhost
      user: dbt_user
      password: dbt_password_123
      port: 5432
      dbname: dbt_airbnb_db
      schema: dev
      threads: 1
      keepalives_idle: 0
      connect_timeout: 10
      retries: 1
  target: dev
```