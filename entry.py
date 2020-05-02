from dadjokes.sources import get_wesbos_dad_jokes
from cowpy import cow
import click
import random
import sys


joke = random.choice(get_wesbos_dad_jokes())
if len(sys.argv) > 1:
    click.echo(cow.milk_random_cow(joke))
else:
    click.echo(joke)