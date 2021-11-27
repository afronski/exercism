"""
Module for tracking rounds in Poker and other kind of card games.
"""

def get_rounds(number):
    """

     :param number: int - current round number.
     :return: list - current round and the two that follow.
    """

    return [number, number + 1, number + 2]


def concatenate_rounds(rounds_1, rounds_2):
    """

    :param rounds_1: list - first rounds played.
    :param rounds_2: list - second set of rounds played.
    :return: list - all rounds played.
    """

    return [*rounds_1, *rounds_2]


def list_contains_round(rounds, number):
    """

    :param rounds: list - rounds played.
    :param number: int - round number.
    :return:  bool - was the round played?
    """

    return number in rounds


def card_average(hand):
    """

    :param hand: list - cards in hand.
    :return:  float - average value of the cards in the hand.
    """

    return sum(hand) / len(hand)

def get_median_card(hand):
    """
    :param hand: list - cards in hand.
    :return:  int - value of card at median position.
    """

    hand_length = len(hand)
    median_index = (hand_length - 1) // 2

    return hand[median_index] if hand_length % 2 else (hand[median_index] + hand[median_index + 1]) / 2.0


def approx_average_is_average(hand):
    """

    :param hand: list - cards in hand.
    :return: bool - is approximate average the same as true average?
    """

    median = get_median_card(hand)
    first_and_last_average = card_average([ hand[0], hand[-1] ])
    full_average = card_average(hand)

    return full_average in [ median, first_and_last_average ]


def average_even_is_average_odd(hand):
    """

    :param hand: list - cards in hand.
    :return: bool - are even and odd averages equal?
    """

    odd_elements = hand[1::2]
    even_elements = hand[0::2]

    return card_average(odd_elements) == card_average(even_elements)


def maybe_double_last(hand):
    """

    :param hand: list - cards in hand.
    :return: list - hand with Jacks (if present) value doubled.
    """

    last = hand[-1]

    return hand[0:-1] + [last * 2] if last == 11 else hand
