

Generate a kick pulse using a edge trigger.

There is an inverting delay from PWRUP\_1V8\_N to N7.

A NOR has the truth table 

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

As such, we'll get the following sequence 

| Event | PWRUP\_1V8 | PWRUP\_1V8\_N | N7 | KICK |
|-------|------------|---------------|----|------|
| 0     | 0          | 1             | 0  | 0    |
| 1     | 1          | 0             | 0  | 1    |
| 2     | 1          | 0             | 1  | 0    |

And the KICK will go high for a short while when PWRUP\_1V8 goes high._
