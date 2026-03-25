#### Start application

You can use Postgres, Redis and Mailcatcher through Docker, just run it:

```bash
docker compose up -d
```

Finally, to start the application, run:

```bash
rails s
```

#### Rubocop

```bash
rubocop -D -E -S # to verify
# or
rubocop -D -E -S --autocorrect # to verify and fix
```

#### ERB Lint

```bash
erb_lint app/views # to verify
# or
erb_lint app/views --autocorrect # to verify and fix
```

#### Rspec

```bash
bundle exec rspec
```