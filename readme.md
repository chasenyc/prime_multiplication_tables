# Prime Multiplication Tables
### Instructions
To run simply just run:
```
lib/app.rb
```
This can be run with a size argument by using `-s N` with `N` being the number of prime numbers in the table.

### Considerations
When designing the multiplication the first thing that struck me is that obviously a multiplication table is going to repeat itself. I tackled this issues by setting every cell to nil by default and then when iterating through the table only do calculations when needed. When a calculation is done it is assigned to both places on table.

### Testing
To run the tests just run:
```
bundle exec rspec
```
Every function is fully tested.
