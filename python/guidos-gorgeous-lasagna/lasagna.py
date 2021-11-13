EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time based on the number of layers.

    :param number_of_layers: int number of layers in the lasagna.
    :return: int preparation time derived from number of layers and PREPARATION_TIME constant.
    """

    return PREPARATION_TIME * number_of_layers

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate total elapsed cooking time (preparation + baking) in minutes.

    :param number_of_layers: int number of layers in the lasagna.
    :param elapsed_bake_time: int baking time already elapsed.
    :return: int the total number of minutes you've been cooking, or the sum of your preparation time and the time
                 the lasagna has already spent baking in the oven.
    """

    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
