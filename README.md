glot-www
========


## Overview
glot-www is the website hosted at [glot.io](https://glot.io).
Snippets are stored and managed in [glot-snippets](https://github.com/prasmussen/glot-snippets)
and code are run through [glot-run](https://github.com/prasmussen/glot-run) via
their respective api's. PostgreSQL is used to store user profiles, api tokens, etc.


## Environment variables
glot-www takes it's configuration from environment variables.
All vars needs to be set, no default values are provided.

| Variable name            | Allowed values                     | Example                  | Description                                                  |
|:-------------------------|:-----------------------------------|:-------------------------|:---------------------------------------------------|
| APPROOT                  | &lt;url&gt;                        | https://glot.io          | Base url to where the app is hosted                |
| PORT                     | 1-65535                            | 3000                     | Listen port                                        |
| PGHOST                   | &lt;ip&gt; &#124; &lt;hostname&gt; | 10.0.0.12                | Postgresql host                                    |
| PGPORT                   | 1-65535                            | 5432                     | Postgresql port                                    |
| PGUSER                   | &lt;string&gt;                     | glot                     | Postgresql username                                |
| PGPASS                   | &lt;string&gt;                     | secret-password          | Postgresql password                                |
| PGDATABASE               | &lt;string&gt;                     | glot                     | Postgresql database name                           |
| RUN_API_BASE_URL         | &lt;url&gt;                        | https://run.glot.io      | Url to run api                                     |
| RUN_API_ADMIN_TOKEN      | &lt;string&gt;                     | some-secret              | Admin token for the run api (to create users)      |
| RUN_API_ANONYMOUS_TOKEN  | &lt;string&gt;                     | secret-token             | Token used to run snippets for anonymous users     |
| SNIPPETS_API_BASE_URL    | &lt;url&gt;                        | https://snippets.glot.io | Url to snippets api                                |
| SNIPPETS_API_ADMIN_TOKEN | &lt;string&gt;                     | some-secret              | Admin token for the snippets api (to create users) |
| MANDRILL_TOKEN           | &lt;string&gt;                     | secret-mandrill-token    | Mandrill token (to send signup emails, etc)        |
| ANALYTICS_ID             | &lt;string&gt;                     | secret-id                | Google analytics id (optional)                     |
